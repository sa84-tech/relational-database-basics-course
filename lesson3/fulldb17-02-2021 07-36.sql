CREATE DATABASE IF NOT EXISTS vk;

USE vk;

#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'et', '2019-04-30 00:00:00', '1999-01-12 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'rerum', '1981-11-06 00:00:00', '2004-02-22 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'fugit', '1996-08-16 00:00:00', '2004-03-07 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'quisquam', '1980-06-04 00:00:00', '2002-11-10 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'praesentium', '2019-10-21 00:00:00', '1990-05-26 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'consequatur', '1970-07-21 00:00:00', '1993-07-24 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'ducimus', '2016-04-12 00:00:00', '2008-02-14 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'corrupti', '1970-02-25 00:00:00', '1989-12-31 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'aliquam', '2010-10-14 00:00:00', '1990-11-16 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'minus', '2005-10-23 00:00:00', '1986-08-14 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'quo', '2013-05-13 00:00:00', '2019-11-24 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'aut', '2000-08-17 00:00:00', '1982-09-11 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'vel', '1984-12-29 00:00:00', '1974-03-09 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'eum', '2014-05-28 00:00:00', '2017-01-02 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'voluptatibus', '1978-03-13 00:00:00', '1990-03-06 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'doloremque', '2004-01-31 00:00:00', '1999-12-28 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'sit', '1984-05-29 00:00:00', '1990-08-05 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'nobis', '2017-04-14 00:00:00', '2009-08-05 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'accusantium', '2014-05-14 00:00:00', '2016-08-17 00:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'repudiandae', '2006-01-01 00:00:00', '1984-03-15 00:00:00');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 5, '1993-04-25 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 17, '1975-01-03 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 57, '1996-08-23 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 61, '1983-05-01 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 98, '2020-02-16 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 12, '1978-05-09 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 18, '2009-12-12 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 39, '2002-09-04 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 93, '2012-05-11 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 4, '1983-08-21 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 32, '1992-06-09 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 54, '1972-06-06 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 81, '2009-05-10 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 67, '1995-06-22 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 73, '1985-07-13 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 89, '2019-01-06 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 23, '2000-10-05 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 35, '1987-02-22 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 44, '1993-04-19 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 91, '2016-11-02 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 92, '2008-10-23 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 100, '1975-11-22 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 15, '1976-03-21 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 22, '2013-07-11 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 45, '2020-06-02 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 48, '1994-04-30 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 70, '1996-02-11 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 14, '2019-07-13 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 90, '2005-12-07 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 52, '2017-05-12 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 71, '1985-06-20 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 80, '1984-06-17 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 87, '1980-04-27 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 13, '2007-05-15 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 29, '2007-12-18 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 40, '1971-04-12 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 72, '1996-11-20 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 8, '1993-04-22 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 27, '2003-06-13 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 28, '1997-12-28 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 43, '1992-03-24 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 56, '1997-04-27 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 58, '2010-11-02 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 60, '1981-10-08 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 65, '2005-12-27 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 76, '1987-01-06 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 37, '2013-03-18 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 50, '1996-02-15 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 99, '1997-01-25 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 19, '2001-12-10 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 20, '1990-08-18 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 21, '1990-04-11 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 24, '2013-02-20 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 30, '2012-09-10 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 33, '2003-06-08 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 36, '1984-06-23 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 63, '1980-03-17 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 64, '1975-07-07 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 77, '1988-01-07 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 78, '1975-02-23 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 96, '2017-12-28 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 97, '1979-04-21 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 7, '2003-04-14 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 69, '2004-12-08 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 75, '1971-10-20 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 82, '2020-02-29 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 1, '2011-02-16 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 25, '1975-07-14 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 16, '2010-04-13 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 34, '1978-05-19 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 46, '1984-01-13 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 62, '2014-10-03 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 79, '2016-03-27 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 85, '1978-08-14 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 86, '1971-04-14 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 88, '1970-03-24 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 6, '1989-10-20 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 31, '2003-07-06 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 41, '1989-04-27 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 53, '1973-07-19 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 66, '1970-11-01 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 83, '2016-12-17 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 94, '1986-10-15 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 38, '1976-04-21 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 49, '2014-06-12 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 74, '1987-01-02 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 95, '2008-01-16 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 11, '2001-06-26 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 51, '1989-01-05 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 84, '1991-02-19 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 9, '2011-04-24 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 10, '1975-01-19 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 26, '2008-01-13 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 42, '2010-12-15 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 47, '2019-01-18 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 2, '1998-03-13 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 3, '1982-05-24 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 55, '2004-10-06 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 59, '1970-07-06 00:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 68, '2011-07-12 00:00:00');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время подтверждения приглашения',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 11, 7, '1994-04-24 00:00:00', '2013-01-28 00:00:00', '2006-08-27 00:00:00', '1996-11-01 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 36, 7, '2019-06-07 00:00:00', '2005-05-11 00:00:00', '1976-08-20 00:00:00', '2018-06-30 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 57, 1, '1992-12-21 00:00:00', '2007-07-31 00:00:00', '1999-05-13 00:00:00', '2015-07-13 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 47, 10, '1997-06-19 00:00:00', '2015-04-22 00:00:00', '1980-09-23 00:00:00', '2001-03-10 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 93, 3, '1988-08-10 00:00:00', '1971-06-25 00:00:00', '1984-02-19 00:00:00', '1991-07-24 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 70, 7, '2007-12-30 00:00:00', '2008-03-13 00:00:00', '2006-03-30 00:00:00', '1970-09-11 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 78, 1, '1984-06-29 00:00:00', '2010-03-27 00:00:00', '2005-11-25 00:00:00', '1989-11-02 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 29, 7, '2009-01-06 00:00:00', '1982-10-14 00:00:00', '1981-12-14 00:00:00', '2009-01-30 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 50, 5, '2018-03-05 00:00:00', '2019-05-24 00:00:00', '1998-02-09 00:00:00', '1991-10-13 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 15, 9, '1994-03-28 00:00:00', '1971-08-06 00:00:00', '2006-03-18 00:00:00', '2006-10-04 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 47, 6, '1994-01-31 00:00:00', '2007-01-06 00:00:00', '1984-08-12 00:00:00', '2019-03-22 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 8, 2, '1996-09-24 00:00:00', '1978-01-03 00:00:00', '1985-07-22 00:00:00', '1994-05-27 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 74, 10, '1975-10-26 00:00:00', '2008-07-24 00:00:00', '1979-09-01 00:00:00', '1981-06-04 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 71, 2, '2011-10-02 00:00:00', '1982-07-14 00:00:00', '2000-06-06 00:00:00', '1994-01-29 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 9, 1, '1991-08-22 00:00:00', '1977-01-22 00:00:00', '2013-05-02 00:00:00', '1975-01-18 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 12, 3, '2004-05-09 00:00:00', '1979-02-16 00:00:00', '2010-11-09 00:00:00', '1972-11-27 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 76, 5, '1993-10-24 00:00:00', '1999-05-30 00:00:00', '1998-01-27 00:00:00', '2012-09-13 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 100, 1, '2004-05-19 00:00:00', '1970-11-03 00:00:00', '2013-06-05 00:00:00', '2017-12-20 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 55, 7, '2008-09-06 00:00:00', '1987-06-02 00:00:00', '1978-11-16 00:00:00', '1971-11-18 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 36, 1, '2010-11-15 00:00:00', '2014-07-29 00:00:00', '2013-11-17 00:00:00', '2002-04-01 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 8, 3, '2010-12-05 00:00:00', '1984-10-05 00:00:00', '2010-04-01 00:00:00', '1992-02-22 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 36, 3, '1979-01-10 00:00:00', '1978-02-07 00:00:00', '1979-12-13 00:00:00', '2012-11-07 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 81, 3, '1990-08-17 00:00:00', '1990-08-29 00:00:00', '1984-08-05 00:00:00', '1978-03-20 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 55, 7, '1982-10-29 00:00:00', '1981-10-01 00:00:00', '2003-09-05 00:00:00', '2020-05-27 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 24, 9, '1993-08-14 00:00:00', '1997-01-11 00:00:00', '1977-04-07 00:00:00', '2003-05-09 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 14, 3, '2008-01-15 00:00:00', '1975-09-14 00:00:00', '1987-06-09 00:00:00', '1981-09-01 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 46, 4, '1991-01-31 00:00:00', '1975-03-25 00:00:00', '1990-06-14 00:00:00', '1995-06-27 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 38, 9, '2010-06-06 00:00:00', '2000-01-20 00:00:00', '2001-03-25 00:00:00', '1972-08-11 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 95, 3, '2008-04-22 00:00:00', '2002-04-11 00:00:00', '2015-05-24 00:00:00', '2001-02-21 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 16, 7, '2017-08-08 00:00:00', '1981-09-04 00:00:00', '1971-03-29 00:00:00', '1975-12-26 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 77, 5, '2006-11-10 00:00:00', '2013-04-12 00:00:00', '2004-08-17 00:00:00', '2010-07-26 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 97, 2, '1991-08-27 00:00:00', '2011-07-06 00:00:00', '2018-09-24 00:00:00', '1985-10-18 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 32, 8, '2010-10-08 00:00:00', '1982-04-01 00:00:00', '2014-10-13 00:00:00', '2002-08-08 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 27, 5, '1976-03-18 00:00:00', '1991-12-08 00:00:00', '2014-05-30 00:00:00', '1973-03-06 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 9, '2001-09-13 00:00:00', '1985-10-18 00:00:00', '2000-02-15 00:00:00', '2012-03-13 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 20, 6, '2013-11-01 00:00:00', '1990-04-05 00:00:00', '1983-04-25 00:00:00', '1970-03-07 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 77, 6, '2008-07-04 00:00:00', '2011-11-02 00:00:00', '2011-07-11 00:00:00', '2019-09-07 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 31, 7, '1978-05-22 00:00:00', '1974-07-03 00:00:00', '1995-03-29 00:00:00', '1988-04-27 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 3, 2, '1998-10-09 00:00:00', '1993-10-21 00:00:00', '2007-08-22 00:00:00', '2003-05-23 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 33, 6, '2016-12-02 00:00:00', '2017-04-12 00:00:00', '1993-05-27 00:00:00', '1970-01-02 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 44, 10, '2011-01-30 00:00:00', '1973-01-31 00:00:00', '2019-05-11 00:00:00', '1977-12-09 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 25, 10, '1979-08-30 00:00:00', '2016-10-19 00:00:00', '1977-02-15 00:00:00', '1998-03-12 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 33, 7, '1983-01-15 00:00:00', '2010-10-04 00:00:00', '1993-05-13 00:00:00', '2007-08-09 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 76, 2, '2000-02-27 00:00:00', '2016-08-19 00:00:00', '1982-11-20 00:00:00', '1986-04-26 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 92, 2, '2000-06-25 00:00:00', '1998-05-04 00:00:00', '2004-07-17 00:00:00', '1986-01-03 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 43, 7, '1988-08-01 00:00:00', '1975-07-01 00:00:00', '2003-07-20 00:00:00', '1972-01-15 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 54, 5, '2004-09-04 00:00:00', '2002-05-14 00:00:00', '2016-08-12 00:00:00', '2007-08-09 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 74, 6, '1979-08-12 00:00:00', '1982-02-10 00:00:00', '2010-04-01 00:00:00', '2003-05-27 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 13, 6, '1995-01-12 00:00:00', '2002-04-29 00:00:00', '2016-07-18 00:00:00', '2008-01-21 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 94, 8, '1974-08-12 00:00:00', '1974-03-01 00:00:00', '2017-11-03 00:00:00', '1986-06-20 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 94, 9, '1990-09-02 00:00:00', '1993-06-17 00:00:00', '1992-11-05 00:00:00', '1987-10-23 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 59, 5, '1972-03-09 00:00:00', '1970-02-13 00:00:00', '2013-08-22 00:00:00', '1976-05-13 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 73, 4, '2017-03-05 00:00:00', '1980-10-01 00:00:00', '1982-03-21 00:00:00', '1978-03-30 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 18, 7, '1974-01-28 00:00:00', '1998-01-05 00:00:00', '2019-09-12 00:00:00', '1985-01-08 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 26, 5, '1996-04-24 00:00:00', '1981-11-08 00:00:00', '2000-11-26 00:00:00', '2011-10-30 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 90, 6, '2014-10-19 00:00:00', '1982-09-06 00:00:00', '2012-12-30 00:00:00', '1988-09-12 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 83, 6, '1985-04-13 00:00:00', '1995-03-21 00:00:00', '1970-03-13 00:00:00', '1977-06-22 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 15, 10, '2012-05-29 00:00:00', '2019-06-19 00:00:00', '2012-12-28 00:00:00', '1986-09-21 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 21, 5, '2010-11-18 00:00:00', '2005-01-25 00:00:00', '1995-10-11 00:00:00', '1999-01-28 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 43, 2, '1972-02-09 00:00:00', '2013-02-02 00:00:00', '2016-10-29 00:00:00', '1977-04-09 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 75, 5, '1977-03-28 00:00:00', '2009-06-23 00:00:00', '1980-09-07 00:00:00', '2007-12-24 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 45, 10, '1989-03-24 00:00:00', '1986-09-08 00:00:00', '1993-11-11 00:00:00', '1992-01-08 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 22, 8, '1971-06-01 00:00:00', '2007-01-12 00:00:00', '2003-09-29 00:00:00', '2013-01-05 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 39, 3, '1982-08-25 00:00:00', '1973-02-22 00:00:00', '2007-07-09 00:00:00', '1988-11-15 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 83, 1, '1999-05-25 00:00:00', '2011-04-21 00:00:00', '1982-06-11 00:00:00', '1972-08-31 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 94, 5, '2007-12-03 00:00:00', '2008-07-16 00:00:00', '2006-11-27 00:00:00', '1999-04-24 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 19, 2, '2009-07-01 00:00:00', '1989-04-15 00:00:00', '1987-12-04 00:00:00', '2013-06-01 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 78, 8, '1991-08-07 00:00:00', '1982-02-17 00:00:00', '1980-02-19 00:00:00', '2014-01-16 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 86, 9, '1978-03-06 00:00:00', '1980-02-21 00:00:00', '2007-07-08 00:00:00', '1977-03-23 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 35, 6, '2001-08-22 00:00:00', '1988-06-18 00:00:00', '2006-01-27 00:00:00', '1974-02-06 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 91, 8, '1976-03-25 00:00:00', '1996-01-16 00:00:00', '1989-05-28 00:00:00', '2020-04-24 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 75, 10, '1995-01-25 00:00:00', '2002-07-15 00:00:00', '2015-07-11 00:00:00', '1970-06-21 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 11, 8, '2011-04-28 00:00:00', '2009-02-25 00:00:00', '2012-03-15 00:00:00', '2002-01-03 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 44, 7, '1976-10-08 00:00:00', '2014-11-12 00:00:00', '1999-04-22 00:00:00', '1979-02-05 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 54, 7, '1973-10-01 00:00:00', '1982-09-06 00:00:00', '1981-12-11 00:00:00', '2015-11-09 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 37, 9, '1983-10-07 00:00:00', '1998-08-31 00:00:00', '1971-06-30 00:00:00', '1996-02-26 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 65, 10, '1978-06-16 00:00:00', '2002-12-19 00:00:00', '2021-02-03 00:00:00', '2011-08-01 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 19, 2, '2014-09-20 00:00:00', '2009-07-04 00:00:00', '1989-05-31 00:00:00', '2012-10-14 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 13, 8, '1982-01-03 00:00:00', '1979-08-25 00:00:00', '2008-09-16 00:00:00', '2003-06-25 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 54, 3, '2001-08-25 00:00:00', '2000-06-21 00:00:00', '1986-06-15 00:00:00', '1996-12-08 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 28, 6, '1973-03-19 00:00:00', '1983-12-30 00:00:00', '1997-01-27 00:00:00', '1987-04-21 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 73, 4, '1988-12-24 00:00:00', '2014-11-21 00:00:00', '2020-12-09 00:00:00', '1993-04-23 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 25, 2, '2018-10-07 00:00:00', '1990-10-11 00:00:00', '1986-10-12 00:00:00', '1984-03-27 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 52, 8, '1984-01-27 00:00:00', '1986-07-18 00:00:00', '1998-06-09 00:00:00', '2010-02-20 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 2, 3, '2004-03-18 00:00:00', '1998-08-28 00:00:00', '1990-08-16 00:00:00', '1985-07-09 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 59, 3, '2005-12-25 00:00:00', '1974-05-27 00:00:00', '1983-03-23 00:00:00', '1994-01-15 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 65, 9, '1990-09-26 00:00:00', '1995-09-27 00:00:00', '2000-10-04 00:00:00', '1994-07-07 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 15, 10, '2001-05-19 00:00:00', '2016-06-17 00:00:00', '2008-03-24 00:00:00', '1972-01-17 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 62, 8, '2013-03-02 00:00:00', '1975-11-28 00:00:00', '2008-07-08 00:00:00', '1988-03-01 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 74, 9, '1983-12-16 00:00:00', '1999-11-07 00:00:00', '1972-11-15 00:00:00', '1988-06-10 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 36, 4, '2010-10-27 00:00:00', '2016-09-28 00:00:00', '1986-11-12 00:00:00', '1977-02-08 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 64, 8, '1981-03-28 00:00:00', '2018-09-08 00:00:00', '2021-02-16 00:00:00', '2008-01-22 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 89, 9, '2017-04-12 00:00:00', '1987-11-25 00:00:00', '2001-08-18 00:00:00', '1985-10-13 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 99, 4, '2012-07-01 00:00:00', '1983-04-23 00:00:00', '2002-07-05 00:00:00', '2003-12-25 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 19, 4, '1973-02-10 00:00:00', '2017-04-06 00:00:00', '1984-10-15 00:00:00', '1972-01-21 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 39, 1, '2013-02-05 00:00:00', '1993-06-04 00:00:00', '2013-11-29 00:00:00', '1990-03-20 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 71, 4, '2012-01-03 00:00:00', '1979-07-05 00:00:00', '1982-07-29 00:00:00', '2009-10-14 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 85, 8, '1971-05-26 00:00:00', '1988-12-30 00:00:00', '1995-09-13 00:00:00', '2016-03-28 00:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 73, 4, '1973-10-05 00:00:00', '2003-09-19 00:00:00', '2015-06-27 00:00:00', '1998-06-06 00:00:00');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'dolor', '2014-07-14 00:00:00', '1971-02-09 00:00:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'aspernatur', '1999-04-03 00:00:00', '2020-05-04 00:00:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'velit', '1986-09-09 00:00:00', '1999-01-31 00:00:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'quam', '2016-09-01 00:00:00', '1974-06-13 00:00:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'voluptatem', '1996-08-30 00:00:00', '1996-01-04 00:00:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'est', '2009-04-03 00:00:00', '1975-03-03 00:00:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'aut', '1994-03-06 00:00:00', '1989-03-08 00:00:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'officia', '2008-03-04 00:00:00', '1978-05-25 00:00:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'quibusdam', '2008-03-23 00:00:00', '1996-07-14 00:00:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'sed', '2006-09-01 00:00:00', '1974-01-11 00:00:00');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'illo', 423708852, NULL, 7, '1977-02-04 00:00:00', '1994-06-05 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'repellendus', 402113, NULL, 3, '2016-12-26 00:00:00', '2009-03-27 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'ratione', 8, NULL, 4, '1982-02-19 00:00:00', '2013-10-08 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'velit', 0, NULL, 4, '1990-09-13 00:00:00', '1980-10-16 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'qui', 0, NULL, 7, '2016-06-11 00:00:00', '1978-09-14 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'hic', 70, NULL, 2, '1977-08-07 00:00:00', '1987-12-18 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'sunt', 0, NULL, 9, '1976-12-31 00:00:00', '1979-08-09 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'maxime', 87402, NULL, 7, '2017-04-29 00:00:00', '2004-10-08 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'doloremque', 602, NULL, 2, '1992-01-27 00:00:00', '1995-08-29 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'rem', 78949728, NULL, 3, '1993-07-22 00:00:00', '1977-05-25 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'deleniti', 689179, NULL, 4, '1999-02-11 00:00:00', '1982-07-03 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'totam', 83012, NULL, 6, '2019-12-05 00:00:00', '2009-10-29 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'vel', 90131, NULL, 2, '1977-02-17 00:00:00', '2003-11-21 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'id', 2610632, NULL, 7, '1984-07-14 00:00:00', '1982-04-19 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'qui', 5837592, NULL, 9, '1992-12-11 00:00:00', '1977-02-11 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'error', 715709, NULL, 8, '2000-01-24 00:00:00', '2011-04-10 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'molestiae', 0, NULL, 3, '2010-02-06 00:00:00', '1991-04-20 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'ea', 408, NULL, 7, '2006-09-23 00:00:00', '1993-12-14 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'ratione', 10, NULL, 3, '1999-01-07 00:00:00', '2007-11-02 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'laboriosam', 83128099, NULL, 2, '1973-09-20 00:00:00', '1989-04-30 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'ea', 31904, NULL, 4, '2003-03-06 00:00:00', '1995-06-26 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'optio', 23, NULL, 6, '1990-03-07 00:00:00', '1991-12-18 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'a', 15915, NULL, 1, '2016-03-16 00:00:00', '2006-07-20 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'occaecati', 0, NULL, 7, '1977-02-23 00:00:00', '1984-08-23 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'harum', 0, NULL, 7, '1998-09-15 00:00:00', '1985-10-20 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'assumenda', 6549, NULL, 5, '2020-08-30 00:00:00', '1979-09-14 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'perspiciatis', 31, NULL, 9, '1975-11-11 00:00:00', '1986-03-18 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'placeat', 0, NULL, 8, '1978-12-11 00:00:00', '2000-11-21 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'placeat', 16078631, NULL, 9, '2011-04-14 00:00:00', '2018-04-02 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'quis', 986, NULL, 5, '1975-11-23 00:00:00', '2019-02-01 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'voluptatem', 536849903, NULL, 3, '2004-01-29 00:00:00', '2014-11-02 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'excepturi', 759339954, NULL, 5, '2006-10-22 00:00:00', '1977-10-20 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'sunt', 79291, NULL, 8, '2006-04-06 00:00:00', '1986-03-29 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'tenetur', 1932651, NULL, 7, '2017-10-19 00:00:00', '1988-02-27 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'nobis', 32, NULL, 8, '2007-11-20 00:00:00', '2001-05-06 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'quibusdam', 16011649, NULL, 4, '1990-09-04 00:00:00', '1993-12-01 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'inventore', 5428, NULL, 8, '1972-01-04 00:00:00', '2016-03-05 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'nobis', 6408287, NULL, 7, '2007-04-10 00:00:00', '1984-12-17 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'est', 0, NULL, 1, '2012-01-25 00:00:00', '2009-11-21 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'nulla', 0, NULL, 10, '2009-06-11 00:00:00', '1982-03-22 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'quos', 93519740, NULL, 9, '2004-12-27 00:00:00', '1990-12-11 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'non', 534, NULL, 4, '2009-10-31 00:00:00', '1981-10-12 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'minima', 734693376, NULL, 5, '2002-09-22 00:00:00', '1995-09-24 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'incidunt', 7677, NULL, 10, '1978-03-23 00:00:00', '1984-05-13 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'sunt', 4422, NULL, 1, '1987-05-18 00:00:00', '1978-11-07 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'a', 4460, NULL, 3, '1985-09-05 00:00:00', '1971-06-16 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'rem', 940, NULL, 8, '2005-11-08 00:00:00', '2011-02-13 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'repellat', 739777, NULL, 3, '2006-12-22 00:00:00', '2013-10-23 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'quia', 63619, NULL, 10, '2019-11-04 00:00:00', '1994-03-12 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'molestiae', 917, NULL, 10, '1986-12-28 00:00:00', '1983-12-30 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'aspernatur', 380816, NULL, 5, '1976-12-11 00:00:00', '1983-03-11 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'ut', 4383, NULL, 4, '1986-06-22 00:00:00', '1975-06-25 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'molestiae', 5, NULL, 6, '2011-05-23 00:00:00', '2019-06-14 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'repellendus', 692047500, NULL, 5, '1974-10-23 00:00:00', '1972-12-11 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'rerum', 5174726, NULL, 10, '1978-12-30 00:00:00', '2010-03-25 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'autem', 43044, NULL, 2, '1973-07-11 00:00:00', '1987-07-12 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'soluta', 73734, NULL, 9, '1993-05-07 00:00:00', '1985-01-29 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'id', 741087600, NULL, 9, '1978-04-09 00:00:00', '1998-07-15 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'iste', 429, NULL, 10, '2001-08-22 00:00:00', '2010-08-23 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'quisquam', 878020679, NULL, 7, '2006-10-31 00:00:00', '1988-08-20 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'in', 1007, NULL, 3, '2020-11-06 00:00:00', '1996-04-11 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'est', 1, NULL, 3, '2017-05-26 00:00:00', '2014-09-02 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'minus', 3247, NULL, 1, '2017-08-24 00:00:00', '2020-03-04 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'placeat', 89109, NULL, 1, '2018-09-21 00:00:00', '2007-08-20 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'excepturi', 5, NULL, 9, '2002-07-13 00:00:00', '1988-08-01 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'pariatur', 67442, NULL, 9, '2007-04-11 00:00:00', '1978-12-23 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'error', 303329289, NULL, 4, '1979-08-06 00:00:00', '1990-01-25 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'eveniet', 0, NULL, 6, '1977-12-09 00:00:00', '1990-02-03 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'voluptatem', 3526647, NULL, 5, '1979-07-05 00:00:00', '1992-05-10 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'excepturi', 370034957, NULL, 5, '1970-05-23 00:00:00', '1998-11-08 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'beatae', 0, NULL, 5, '1973-10-15 00:00:00', '2003-08-30 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'ut', 0, NULL, 4, '2000-11-04 00:00:00', '1976-12-21 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'necessitatibus', 91509, NULL, 8, '2014-03-30 00:00:00', '2003-06-12 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'unde', 48, NULL, 10, '1979-03-10 00:00:00', '1993-08-07 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'quo', 435444609, NULL, 4, '1994-05-05 00:00:00', '2001-01-14 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'iusto', 6, NULL, 9, '2019-12-19 00:00:00', '2015-12-30 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'explicabo', 125689328, NULL, 2, '1998-01-08 00:00:00', '2019-07-03 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'nesciunt', 79980580, NULL, 1, '1987-12-25 00:00:00', '2005-01-04 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'sed', 63, NULL, 1, '1978-11-05 00:00:00', '1982-11-17 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'fuga', 70461, NULL, 2, '1977-11-08 00:00:00', '2005-01-01 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'necessitatibus', 14, NULL, 1, '1994-09-24 00:00:00', '1998-10-08 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'debitis', 5998288, NULL, 6, '1995-05-28 00:00:00', '1993-07-08 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'doloremque', 62932837, NULL, 5, '2006-09-22 00:00:00', '1975-05-16 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'illum', 672962905, NULL, 6, '1992-12-13 00:00:00', '1987-05-11 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'minus', 3049, NULL, 10, '1996-06-30 00:00:00', '2007-08-28 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'tempora', 9343745, NULL, 5, '1993-09-15 00:00:00', '1991-01-25 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'rem', 863055958, NULL, 8, '1987-10-25 00:00:00', '2015-11-23 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'est', 0, NULL, 9, '1971-01-18 00:00:00', '2001-12-05 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'beatae', 2077, NULL, 3, '1979-04-10 00:00:00', '2011-07-07 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'ex', 63268, NULL, 7, '2006-05-13 00:00:00', '2009-06-13 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'ipsum', 0, NULL, 6, '2007-04-27 00:00:00', '1977-12-15 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'non', 7, NULL, 6, '1978-12-01 00:00:00', '2012-07-08 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'laudantium', 131545482, NULL, 9, '1981-12-15 00:00:00', '2018-09-28 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'corrupti', 90164813, NULL, 6, '1982-02-24 00:00:00', '1971-09-29 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'dolores', 4901446, NULL, 6, '2002-03-30 00:00:00', '2017-04-05 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'consequuntur', 1837868, NULL, 8, '1993-11-12 00:00:00', '2010-04-16 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'qui', 4225105, NULL, 5, '2012-09-20 00:00:00', '2020-01-24 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'animi', 1270, NULL, 10, '2014-01-26 00:00:00', '2000-07-10 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'omnis', 9490391, NULL, 3, '2003-05-17 00:00:00', '1987-11-16 00:00:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'voluptatem', 0, NULL, 9, '1986-09-22 00:00:00', '1977-08-05 00:00:00');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'explicabo', '2003-10-02 00:00:00', '2010-07-07 00:00:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'dolorem', '1973-11-07 00:00:00', '2007-07-27 00:00:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'molestias', '2019-11-02 00:00:00', '2004-03-10 00:00:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'minus', '1994-11-12 00:00:00', '2020-09-07 00:00:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'est', '1994-04-13 00:00:00', '2006-01-11 00:00:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'enim', '1976-05-09 00:00:00', '1992-12-26 00:00:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'soluta', '2010-03-10 00:00:00', '1985-12-02 00:00:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'omnis', '2000-07-11 00:00:00', '1972-06-06 00:00:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'et', '1983-01-02 00:00:00', '1995-01-21 00:00:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'eaque', '2018-04-30 00:00:00', '2010-11-09 00:00:00');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 88, 55, 'Cupiditate enim asperiores aut est molestias omnis et. Et ut aut mollitia occaecati perferendis sit omnis. Ab ea et nesciunt sapiente amet quis reprehenderit.', 1, 1, '2020-10-10 16:23:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 53, 82, 'Et minima voluptatem nihil ea. Et doloremque soluta qui iste. Mollitia necessitatibus nostrum dolor et excepturi. Quia modi recusandae reiciendis praesentium modi natus.', 1, 1, '2020-03-26 05:48:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 28, 54, 'Excepturi et sit nesciunt quasi autem fuga omnis eveniet. Consequuntur omnis perferendis omnis sint.', 1, 0, '2020-04-09 19:08:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 75, 24, 'Iure sint numquam saepe eligendi dignissimos sit voluptatem. Consequatur asperiores rerum qui qui officia molestias soluta. Ut iste ad aut voluptatibus. Voluptatum mollitia et ut reiciendis ea eum.', 1, 1, '2020-03-30 18:45:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 72, 91, 'Est deserunt aliquid iure consequatur voluptas dolore quasi quis. Natus minus laborum odit cumque et hic voluptatem molestias. Provident hic quasi provident nam molestiae amet quos. Unde soluta est a veritatis.', 1, 0, '2021-01-06 04:00:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 75, 15, 'Enim maxime atque eius et dolorem error cupiditate dolor. Dolores nam doloremque dolorem enim. Eum vitae illum laudantium et dolore. Corporis omnis qui cumque.', 1, 1, '2020-12-25 14:15:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 4, 62, 'Sit eaque asperiores in error ipsam. Ipsa voluptas numquam eos sequi enim rerum. Temporibus aut ullam atque aut dolorum sed dolores. Facere eaque dicta quia fugit et suscipit.', 1, 1, '2020-06-04 22:03:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 1, 79, 'Itaque dolor quia repellendus consectetur repudiandae omnis architecto. Sit esse quo omnis distinctio est illum facere ipsam. Explicabo accusantium voluptatum minus pariatur quam et enim. Aut esse et animi et sed quae.', 0, 0, '2020-09-13 01:43:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 30, 16, 'Illo dolorem fugit quae expedita consequatur laboriosam. Eligendi cumque accusamus in at quasi vel corporis. Iusto ea sunt praesentium quaerat dolor qui voluptas. Eius in eaque minima sed sed.', 1, 0, '2020-05-09 09:48:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 39, 53, 'Et sequi perferendis est ad velit et et. Deleniti sint dolor corporis similique. Voluptatem a ipsam consequuntur voluptatem. At sit dolores quam totam numquam nostrum.', 1, 1, '2020-12-16 13:35:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 71, 91, 'Doloremque magnam saepe modi reprehenderit et qui. Et et temporibus nobis ipsam tempore velit itaque numquam. Ut et autem quis dignissimos aspernatur ut. Eveniet earum nemo molestiae cumque quo dolorem. Ad provident dolor dolor libero.', 1, 0, '2020-02-18 08:12:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 55, 68, 'Consectetur corrupti adipisci corporis laboriosam sint harum consequatur. Iste et alias porro id laudantium. Et hic non quidem.', 1, 0, '2021-01-11 02:13:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 35, 18, 'Aut voluptas assumenda veniam minima fugit qui. Dolor odio fugiat illum et consequuntur officiis dolorum cum. Possimus itaque et qui similique aperiam consequatur aut excepturi. Dolorem et harum ipsam perferendis minus sequi eum.', 0, 0, '2021-01-13 03:58:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 72, 39, 'Itaque ut cumque quia eos. Possimus recusandae quam consequatur qui. Maxime doloremque qui dolores unde dolores.', 0, 0, '2020-08-21 16:27:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 58, 47, 'Sapiente similique libero recusandae quam impedit vel corporis. Placeat voluptas sint mollitia accusamus aliquid dolor quod. Nam asperiores officia ratione sed a eligendi. Non quod quidem debitis unde consequatur quod. Voluptate quaerat perspiciatis ut cumque.', 1, 1, '2020-07-04 18:01:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 41, 46, 'Delectus et quae consectetur. Odit et ad non quo maiores. Libero est pariatur at quis.', 0, 0, '2020-05-03 09:19:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 1, 93, 'Inventore doloremque assumenda omnis fugiat. Vel sint autem tempore.', 0, 0, '2020-03-08 20:37:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 27, 29, 'Expedita est sapiente est vero. Et voluptas quia dolorum delectus occaecati voluptas. Nihil et sapiente dolorum et atque nihil.', 0, 0, '2020-05-12 22:33:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 47, 2, 'Culpa similique molestiae minima maxime totam eligendi. Provident autem illo nihil asperiores modi.', 0, 0, '2020-06-20 13:12:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 52, 19, 'Tenetur ipsam accusamus nesciunt iste qui. Porro possimus repellat vel possimus vel. Aut ad sapiente adipisci possimus quia natus eos temporibus.', 1, 0, '2020-07-15 12:56:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 93, 26, 'Aliquid ex porro aut. In placeat provident dicta enim. Ut cum animi in architecto tempore. Quos fuga rem in recusandae magni autem ullam assumenda.', 0, 1, '2020-08-10 00:11:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 33, 96, 'Accusamus quibusdam est aut. Dolor in eaque tempora iste cumque culpa in. Ducimus est incidunt assumenda est corrupti. Quisquam qui et illum tempora.', 1, 1, '2020-12-01 12:51:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 88, 33, 'Totam corporis qui nulla possimus. Possimus distinctio odit quis odio. Voluptatem eaque ut voluptas consequatur optio illum.', 1, 1, '2020-09-01 06:02:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 75, 17, 'Hic ad et voluptas minus est. Ut sunt voluptates qui nulla cum. Voluptates deserunt corrupti enim quam ut aut quis.', 0, 1, '2020-07-11 18:08:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 48, 13, 'Ullam id et labore voluptatem voluptatibus culpa et. Ut molestiae et recusandae. Quam dignissimos quia dolore autem. Facilis deserunt vel dignissimos quis doloremque voluptates. Eum repellat sunt quis et.', 0, 0, '2021-01-29 18:41:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 70, 19, 'Et dolorum fuga est fugit corrupti maiores. Eos facere maxime delectus. Voluptatibus aut expedita ut est enim et possimus.', 1, 0, '2020-05-26 02:18:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 3, 24, 'Fugit quisquam inventore sequi pariatur. Labore vel saepe voluptas sit veniam qui. Voluptates quos officiis veniam placeat et. Quam et et occaecati voluptas omnis non eos. Praesentium in neque vero delectus modi.', 1, 0, '2020-12-02 15:46:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 86, 38, 'Culpa ad ad voluptatem id perferendis pariatur ullam. Et ad eligendi accusamus iste eligendi. Non et voluptas aliquid qui expedita voluptate ut. Cum animi molestiae quaerat vel.', 0, 1, '2020-03-13 04:09:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 41, 58, 'Delectus animi velit architecto et. Veritatis non et sit voluptatem ab eius esse. Hic et reprehenderit aut recusandae id. Praesentium voluptas dolor eos dicta aliquid ad. Est qui corrupti consequatur porro quidem.', 0, 1, '2020-11-06 18:30:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 76, 98, 'Ipsum sed officiis inventore est ut. Assumenda totam dignissimos officia perferendis enim et et aut. Ratione enim sunt et qui illo ut.', 0, 0, '2020-03-22 18:53:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 4, 17, 'Cupiditate officiis nisi magni corrupti. Maxime iste excepturi cum nesciunt saepe.', 0, 1, '2020-08-17 14:24:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 43, 5, 'Non voluptatem rerum hic omnis quia. Autem blanditiis itaque unde eos et asperiores omnis voluptates. Perspiciatis non sunt voluptatem tempore qui. Voluptatem rem illum aliquam nemo nulla.', 1, 0, '2021-01-10 22:54:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 9, 70, 'Aut velit omnis omnis quo ipsa aut reprehenderit. Voluptatum dolorem dolor sint nemo. Eius doloribus ratione dolore dicta officia occaecati et. Quae qui voluptatibus beatae qui perspiciatis vero esse.', 1, 0, '2020-04-03 12:32:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 34, 55, 'Magni id exercitationem natus voluptatibus error sed fugiat. Eum eveniet voluptas id voluptatum voluptatem. Et expedita neque quasi nemo. Dignissimos doloremque iste ullam.', 1, 1, '2021-02-07 03:03:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 72, 85, 'Assumenda temporibus aut rerum rerum. Quaerat qui beatae commodi eius omnis dolorem voluptatem. Ut et eos et molestiae. Provident facilis reiciendis mollitia nobis omnis quaerat.', 1, 0, '2020-07-17 19:53:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 73, 64, 'Fuga blanditiis id voluptatem dolorem. Amet voluptates quae ipsa vitae est omnis pariatur tempore. Dignissimos et molestias repellendus est explicabo est. Nihil molestiae reprehenderit quis totam.', 0, 0, '2021-01-13 22:46:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 11, 5, 'Distinctio nulla ex earum quaerat culpa qui atque. Et sit aut ut autem exercitationem ut. Sed aut officiis ea eveniet repellat rerum fugiat.', 0, 1, '2020-12-05 23:48:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 60, 98, 'Architecto dicta cum tempore ut cum reiciendis. Est inventore commodi ut deleniti eveniet. Ex tenetur quisquam quia.', 1, 0, '2020-04-03 08:54:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 38, 35, 'Accusamus fugit aut consequuntur. Veniam accusamus ullam et adipisci et voluptatem. Quo nulla at veritatis voluptatem nostrum aut perferendis. Et assumenda omnis aut illum saepe.', 1, 1, '2020-09-08 01:21:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 15, 85, 'Voluptatem deleniti odit eos delectus sunt. Non sit vero aut et.', 1, 0, '2021-02-01 01:19:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 47, 84, 'Est quos omnis recusandae voluptatem similique doloremque nihil. Temporibus ut et necessitatibus quos dolorum qui.', 0, 1, '2020-06-16 04:11:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 4, 50, 'Excepturi dolor vel magnam sed recusandae et quis. Asperiores ut ut accusantium provident officia officiis. Pariatur neque aut hic suscipit aut quia enim. Et officiis consequatur sint aspernatur ut amet.', 1, 1, '2020-12-06 04:43:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 7, 90, 'Enim quos sint sunt necessitatibus tempore tempora sequi. Vitae saepe quia explicabo architecto fugiat deserunt rem. Officia eveniet voluptatem in suscipit omnis doloribus hic. Et voluptate excepturi excepturi et inventore incidunt qui odio.', 0, 0, '2020-07-30 07:15:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 88, 48, 'Aut repudiandae sed reprehenderit non saepe suscipit quasi. Deleniti voluptatem voluptate architecto est error eum.', 1, 0, '2020-03-08 13:57:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 47, 64, 'Nihil vitae quos qui. Qui perferendis aliquam quo ratione cum omnis nostrum.', 1, 0, '2020-12-04 09:53:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 46, 51, 'Vero ea odit veritatis. Assumenda eos illo ipsum. Tenetur odit sunt saepe consequatur sed.', 1, 0, '2020-07-21 17:02:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 80, 88, 'Consequuntur a facilis eius architecto sed a. Nesciunt sunt aut quisquam dicta nesciunt est tempora neque. Aut numquam possimus numquam ut.', 0, 1, '2020-03-30 13:24:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 55, 88, 'Sed rerum dolores qui. Fugiat sunt adipisci officia eum animi aut molestiae voluptatem. Ut minima ratione dolores officiis.', 0, 0, '2020-11-14 20:12:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 58, 88, 'Nobis qui molestiae vel corporis ratione et. Quos minus temporibus iusto blanditiis suscipit iusto odio. Voluptatem voluptatem distinctio consequatur ipsa aut. Et occaecati incidunt ut earum consequatur non.', 1, 1, '2020-08-15 08:18:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 43, 29, 'Incidunt beatae eaque laborum omnis placeat. Explicabo non tenetur autem. Sit placeat consectetur consequuntur magni at ut.', 1, 0, '2020-12-24 04:38:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 73, 16, 'Maiores ratione officiis qui. Impedit earum rerum beatae reprehenderit dolor. Eos est suscipit eius facere rerum.', 0, 1, '2020-03-09 15:44:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 93, 84, 'Velit quas voluptas similique repellat fuga. Unde adipisci cumque facere. Nisi consequatur qui et autem et et enim. Dolor dolor quod molestiae porro vero. Molestiae sint a nesciunt ut.', 1, 0, '2020-04-20 05:00:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 21, 53, 'Aut illo neque neque maiores. Et ut ipsum praesentium deserunt esse. Pariatur nemo vel quia aut quod aut. Voluptas dolores quidem omnis. Blanditiis molestiae est et.', 0, 1, '2020-09-14 16:56:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 82, 58, 'Sapiente cum deserunt ipsa. Repellat impedit culpa et quis magnam veniam temporibus. Veniam est facilis et earum laboriosam consequuntur dolor dolore.', 0, 1, '2020-02-28 14:45:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 87, 96, 'Repellat nostrum nobis nemo deleniti. Eos culpa doloribus modi eveniet cupiditate. Aut numquam temporibus nihil enim laborum.', 1, 1, '2020-08-18 17:48:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 43, 34, 'Eligendi porro itaque est. Ea consequatur est laborum eum sequi temporibus quasi. Ipsum odio molestias voluptatem consequatur. Aut et et fugiat quo.', 1, 0, '2021-01-28 18:39:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 80, 46, 'Modi sunt saepe labore sed. Mollitia iure dolorem tempora at. Sequi omnis incidunt vel.', 0, 0, '2020-03-24 03:24:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 84, 87, 'Inventore nam qui dicta quasi. Iusto maiores explicabo molestias. Autem est rem quasi impedit. Voluptatum quibusdam velit vel ut vel ut.', 0, 0, '2020-05-08 22:26:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 36, 71, 'Minus corrupti in voluptas dolore. Et quibusdam odio est quibusdam voluptatum illo quasi. Consequatur consequuntur enim ad doloremque velit beatae.', 1, 0, '2020-10-27 09:47:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 34, 82, 'Dolores ipsam voluptate nihil et odio quis. Incidunt quo in voluptas porro. Ipsa possimus earum illum sed et.', 1, 0, '2020-08-16 21:56:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 34, 79, 'Doloremque hic deserunt eveniet ut enim eligendi dicta. Aut architecto voluptatem unde consequatur. Ipsam officia nisi et deserunt saepe qui dolores. Nesciunt iusto quo accusantium assumenda consequuntur et ex nisi.', 0, 1, '2020-12-18 16:54:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 32, 14, 'Est asperiores magni ex pariatur consectetur sit. Ex blanditiis aut quia maxime illum mollitia sunt.', 1, 0, '2020-03-31 14:32:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 67, 87, 'Error esse est quis autem pariatur. Quo itaque saepe perspiciatis quas necessitatibus voluptas dolore. Fuga rerum optio magni temporibus qui. Delectus quidem sequi in eius doloremque repellat.', 1, 0, '2020-10-28 07:57:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 1, 25, 'Molestiae facilis harum deleniti suscipit voluptatem harum velit. Voluptate laboriosam provident iusto sit numquam. Ea quo pariatur et officiis. Quia vel est nobis aut quibusdam.', 0, 1, '2020-12-18 19:57:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 75, 44, 'Ut distinctio iusto nisi qui. Ipsa nulla dolores minus adipisci minus. Cupiditate ea quaerat nam enim.', 0, 0, '2020-12-29 03:46:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 53, 47, 'Ipsum alias accusamus et voluptatum necessitatibus ab. Ab totam dicta quaerat et reiciendis unde modi dolor. Minima sunt delectus consequatur tenetur eos nostrum officiis consequatur.', 0, 0, '2020-08-22 10:46:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 59, 46, 'Accusantium et est optio a. Aut optio est harum quia alias et ut consequatur. Et eligendi est nemo excepturi harum voluptas repellat eos. Totam beatae eveniet non voluptatem sequi aliquam reprehenderit.', 1, 0, '2020-12-21 14:04:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 30, 79, 'Reiciendis et tempora itaque possimus quisquam. Sit modi qui corrupti facere est. Rerum ut officiis mollitia deleniti est id.', 1, 1, '2020-03-16 19:18:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 98, 12, 'Labore necessitatibus consequatur qui illum. Id voluptas repellendus sed cupiditate enim. Molestiae quasi rem nihil architecto. Sunt consequatur odio velit eos eligendi vero.', 1, 0, '2020-11-09 20:24:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 37, 85, 'Consequatur saepe rerum pariatur rem deleniti et. Dolores a dolor ut maiores.', 1, 1, '2020-07-09 08:29:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 7, 79, 'Autem magni voluptatem similique corrupti. Distinctio assumenda libero consequatur illum assumenda. Accusamus voluptate aut ipsam. Asperiores neque esse expedita adipisci.', 1, 1, '2020-03-15 16:33:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 19, 87, 'Quam repellat sunt culpa ab quis sed. Sint numquam voluptas magni. Iusto doloremque ipsa inventore sit. Sit deserunt nisi laborum illum. Ratione maxime maxime dolorem nobis iste dolorem.', 1, 1, '2020-11-08 09:38:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 24, 2, 'Nobis voluptate sint maxime in. Voluptas soluta sint id dolores consequatur.', 1, 1, '2020-05-21 15:28:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 73, 60, 'Ipsam et non quis reiciendis et esse. Atque debitis quasi accusantium sapiente corrupti aut dolores. Assumenda omnis ab aut ea repellat.', 1, 0, '2020-08-06 19:46:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 73, 7, 'Vero nemo dolore et eligendi. Ut non vitae iure in sint in illo. Non sed exercitationem unde provident et aut mollitia. Modi quasi voluptatem commodi voluptatem id quasi ea asperiores.', 0, 1, '2020-08-30 13:13:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 41, 7, 'Nostrum eos in dolorem veniam dolorum itaque ipsa. Nobis ex et consequatur hic. Similique sit id ex ut ut sint.', 0, 0, '2020-08-22 20:07:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 86, 73, 'Et ducimus blanditiis impedit. Velit commodi laborum autem id est consequuntur dolores unde.', 0, 0, '2020-11-21 15:39:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 20, 53, 'Et autem a vitae corrupti. Adipisci quo facere veritatis velit sequi quia aut inventore. Sed reiciendis sunt rerum iste.', 0, 1, '2020-09-19 19:08:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 59, 21, 'Eos eaque ab sed. Sit aliquid sint modi omnis saepe dolore ea voluptas.', 0, 0, '2020-09-09 00:23:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 77, 33, 'Laudantium quisquam rerum officia et eum dicta omnis et. Unde ea nesciunt porro vitae accusamus. Temporibus qui eius voluptas qui quo fugiat nihil. Numquam voluptates veritatis veritatis aut libero voluptatum.', 0, 1, '2020-05-05 01:20:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 64, 30, 'Ipsa reprehenderit rerum et deleniti asperiores deleniti labore. Magnam aut enim eum sint reprehenderit aspernatur doloremque. Architecto itaque rerum qui nihil molestiae eos. Quasi qui molestias quas.', 1, 0, '2020-09-14 09:13:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 80, 23, 'Aperiam qui laboriosam magni voluptate. Et omnis unde quo excepturi sunt est sapiente. Beatae ipsam aliquam vel architecto modi. Ex qui autem corporis quia cum.', 0, 1, '2020-10-28 18:54:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 75, 10, 'Ut et quo corporis quibusdam quibusdam quas. Earum est voluptatem quisquam doloribus. Maiores excepturi alias enim quod.', 0, 1, '2020-03-04 14:47:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 2, 73, 'Quibusdam itaque eum iste debitis labore. Consequatur officiis fugiat error veniam itaque similique dolores magni. Dignissimos neque et id accusantium deserunt et. Quia velit voluptas sint nam esse et eos. Enim vitae ad facilis dolore et omnis.', 1, 1, '2020-06-05 20:29:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 21, 38, 'Dolor aut et quis unde. Repudiandae deleniti culpa hic saepe laboriosam sint non. Et alias asperiores consectetur modi nobis est. Dolor eos necessitatibus ut reprehenderit.', 0, 1, '2020-08-25 14:41:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 58, 28, 'Reprehenderit molestiae asperiores debitis. Voluptatem voluptatem eaque eos accusamus officiis. Perferendis necessitatibus consectetur veniam rerum atque maxime veritatis occaecati.', 1, 1, '2020-12-19 22:26:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 16, 76, 'Eum vel animi aut reiciendis consequatur. Est in rerum molestiae earum. Soluta ullam enim dolor et quis eos soluta. Praesentium harum animi reiciendis quidem aut veritatis.', 1, 0, '2020-08-07 13:12:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 15, 40, 'Culpa eius id aut incidunt odit. Iste ullam consequatur et ducimus. Eaque error dolor voluptas perspiciatis dolor soluta. Ea sed assumenda nesciunt omnis reiciendis sapiente et.', 1, 1, '2020-10-01 08:30:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 78, 88, 'Dolorem ut voluptatem ipsam unde occaecati tenetur inventore. Tempore accusamus fugit ratione cum dignissimos. Est sit eum ea nisi.', 1, 1, '2020-08-29 11:24:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 99, 50, 'Dolor quidem eum animi magnam error. Iusto sapiente eum voluptatem odit. Quos nulla est aut architecto ipsam ex distinctio. Est illum facere et est sit dolor ea.', 1, 0, '2021-02-02 18:50:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 94, 40, 'Nostrum possimus autem excepturi et nesciunt. Aut doloremque id quaerat quae. Voluptatem aperiam sit enim et quasi cupiditate.', 0, 0, '2020-06-19 09:56:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 56, 80, 'Nihil excepturi officiis fuga eveniet. Ex distinctio dolorem voluptas. Mollitia voluptatum eius totam consequuntur voluptatem aliquid. Laborum ex est omnis et.', 0, 1, '2020-04-15 13:09:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 12, 76, 'Excepturi sint incidunt ut voluptatum soluta consequatur non. Vel asperiores consequatur neque repudiandae nisi. Perspiciatis veniam qui recusandae qui. Magni et quia quam quia non modi illum. Soluta aliquam qui voluptatum ea ea quasi.', 0, 1, '2020-03-25 06:26:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 32, 71, 'Et repellendus modi id quidem voluptas quia quae. Cumque vel qui dolor provident. Facilis sequi rerum sed illo. Occaecati aliquam voluptas exercitationem id officiis.', 0, 0, '2020-11-21 09:22:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 96, 9, 'Quo tenetur a voluptate est. Nostrum velit magnam soluta cupiditate ut voluptatibus. Maiores veniam a quae et. Ipsum consequuntur voluptatem et aut.', 0, 0, '2020-08-12 15:20:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 4, 60, 'Sed rerum sit tempore quo alias quis nisi excepturi. Voluptas iste sed adipisci. Sequi doloribus numquam et id hic dolores voluptas.', 0, 0, '2021-02-05 01:29:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 38, 84, 'Quo quas tempora ea aut laborum ea dolorum. Commodi at veniam voluptas delectus culpa ea hic. Totam nobis et odit quibusdam. Ullam est aliquid enim fuga optio.', 1, 1, '2020-02-19 12:32:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 82, 13, 'Rerum voluptas cupiditate accusantium sint labore qui. Illum autem quia magni nam labore magni qui. Quibusdam dolorum quaerat qui est nisi architecto. Eum quas incidunt velit sit asperiores dicta placeat.', 0, 1, '2020-03-21 04:02:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 93, 83, 'Provident sed dolore numquam quia qui. Rerum et eius rerum aut. Omnis quos cum ea. Aut ad est et.', 0, 1, '2021-01-18 15:28:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 85, 14, 'Dolor dolore rerum dolorem facere cupiditate molestiae. Commodi facilis sit voluptatem voluptatibus ipsam molestiae officia accusamus. Et consequatur non sapiente.', 1, 1, '2021-02-07 06:08:15');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` enum('m','f') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Последний вход в систему',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (1, 'm', '2009-03-25', 'Mullerborough', 'Turkey', '2021-01-02 03:40:38', '2020-12-02 05:20:38', '2020-03-15 21:50:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (2, 'm', '1986-12-16', 'Breitenbergtown', 'Iran', '2020-11-20 12:11:25', '2020-09-10 03:44:50', '2020-11-21 22:37:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (3, 'f', '1999-11-17', 'New Alftown', 'Netherlands', '2020-11-21 08:56:45', '2020-08-18 00:46:48', '2020-08-30 19:54:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (4, 'm', '1994-09-17', 'South Christine', 'Palestinian Territory', '2020-10-14 22:36:19', '2020-10-26 11:35:52', '2020-12-06 06:03:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (5, 'f', '1989-09-09', 'Lake Philipton', 'Norfolk Island', '2020-06-28 20:29:15', '2020-12-12 09:37:32', '2020-06-28 07:46:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (6, 'f', '2004-09-17', 'Betsyburgh', 'Taiwan', '2020-05-21 23:57:55', '2020-07-23 22:51:52', '2020-07-04 06:02:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (7, 'f', '1999-06-12', 'Hellenland', 'China', '2020-08-25 22:37:25', '2021-02-15 05:40:36', '2020-11-28 13:55:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (8, 'm', '1981-10-17', 'East Domingo', 'Palau', '2020-11-06 05:23:40', '2021-02-09 07:07:49', '2020-10-13 21:23:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (9, 'm', '2006-06-15', 'West Clarkstad', 'Northern Mariana Islands', '2020-10-20 19:58:24', '2020-12-29 13:30:05', '2020-03-21 08:52:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (10, 'm', '2012-03-23', 'Connieview', 'Bahamas', '2020-11-06 13:51:42', '2020-04-21 18:22:53', '2020-09-19 19:45:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (11, 'm', '1994-02-21', 'Trentfurt', 'Korea', '2020-11-27 00:11:26', '2020-04-12 03:43:29', '2020-09-27 20:21:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (12, 'm', '2019-12-24', 'Sengerview', 'Chile', '2020-03-25 09:08:40', '2020-12-02 03:32:43', '2020-02-23 22:30:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (13, 'f', '2008-05-16', 'Greenholtfurt', 'Dominican Republic', '2020-09-19 20:35:29', '2020-11-01 23:54:12', '2020-11-03 23:10:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (14, 'm', '1998-03-01', 'Ondrickaburgh', 'Zimbabwe', '2020-08-09 03:14:26', '2021-02-02 23:16:36', '2020-07-08 00:06:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (15, 'f', '2013-03-04', 'Cristinaville', 'Netherlands', '2020-04-27 12:04:40', '2020-03-12 12:44:55', '2020-04-06 11:42:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (16, 'f', '1989-10-25', 'Kobyport', 'Finland', '2020-08-25 12:32:15', '2021-01-11 16:21:29', '2021-01-20 05:30:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (17, 'f', '1989-01-18', 'South Janellechester', 'Norfolk Island', '2020-06-25 16:32:38', '2020-08-01 01:44:14', '2020-12-02 14:07:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (18, 'm', '1986-08-16', 'Abdulborough', 'Lithuania', '2020-10-27 06:08:15', '2021-01-10 17:57:54', '2021-02-09 01:52:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (19, 'm', '1989-04-23', 'Effertzview', 'Portugal', '2020-02-22 04:19:08', '2020-12-17 04:00:22', '2021-02-12 00:31:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (20, 'm', '1974-08-13', 'Marvinberg', 'Italy', '2020-06-30 10:51:24', '2020-04-12 08:01:14', '2020-08-01 06:52:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (21, 'f', '2003-02-14', 'Port Burdettemouth', 'Luxembourg', '2020-04-26 16:59:25', '2020-05-30 03:40:13', '2020-04-11 22:40:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (22, 'm', '1999-08-25', 'Markschester', 'Togo', '2020-06-28 02:32:47', '2020-07-22 22:17:43', '2020-05-02 06:20:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (23, 'f', '1983-05-03', 'Violetteville', 'El Salvador', '2020-06-16 21:40:30', '2020-04-22 08:37:47', '2021-01-25 18:15:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (24, 'f', '2009-09-21', 'Spencerview', 'Singapore', '2020-04-14 00:29:21', '2021-02-12 14:05:32', '2021-01-22 14:48:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (25, 'm', '2004-04-11', 'Johnsonport', 'Mexico', '2020-12-23 06:23:59', '2020-06-21 00:56:40', '2020-03-23 21:19:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (26, 'm', '1987-04-14', 'Ginomouth', 'Rwanda', '2020-11-12 11:10:43', '2020-04-15 03:24:29', '2020-03-11 05:21:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (27, 'm', '1977-04-02', 'North Cathrynview', 'Cambodia', '2020-08-29 03:59:25', '2021-02-12 16:39:49', '2020-09-26 20:40:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (28, 'm', '1973-05-01', 'East Landen', 'Honduras', '2020-11-16 14:15:38', '2020-08-03 20:44:43', '2020-10-14 06:34:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (29, 'f', '1996-05-30', 'Powlowskistad', 'Singapore', '2020-08-14 12:03:40', '2020-07-09 01:25:06', '2021-01-22 23:56:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (30, 'f', '2012-06-21', 'Jeraldville', 'Syrian Arab Republic', '2021-01-23 16:30:28', '2020-04-29 13:44:14', '2020-04-13 18:20:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (31, 'm', '2008-06-25', 'East Pearlfurt', 'Italy', '2020-10-30 22:37:24', '2020-10-31 13:38:09', '2021-01-06 16:57:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (32, 'f', '2007-10-07', 'Wittingborough', 'Cocos (Keeling) Islands', '2020-08-10 21:09:25', '2020-03-19 00:08:24', '2021-01-20 06:44:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (33, 'f', '1982-03-26', 'West Ladariushaven', 'Lesotho', '2020-12-17 02:35:35', '2020-07-21 15:33:26', '2021-02-01 22:31:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (34, 'm', '2005-11-27', 'North Maryam', 'Saint Barthelemy', '2020-12-06 19:45:37', '2020-12-03 20:24:23', '2020-05-04 16:13:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (35, 'm', '1983-11-18', 'Rathville', 'Moldova', '2020-08-23 06:49:06', '2020-09-14 13:16:41', '2020-06-30 12:52:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (36, 'm', '1982-04-20', 'Coltonton', 'Comoros', '2020-05-26 07:20:11', '2020-11-29 05:35:55', '2020-05-02 21:34:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (37, 'f', '1971-09-03', 'Port Peyton', 'Rwanda', '2020-09-03 07:51:34', '2020-05-04 04:40:09', '2020-08-02 21:15:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (38, 'f', '2013-02-18', 'Huelsmouth', 'Greece', '2020-03-02 22:12:54', '2020-03-30 22:53:10', '2020-08-13 11:20:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (39, 'm', '1981-12-20', 'Keeganfurt', 'Taiwan', '2020-02-29 18:08:15', '2020-10-29 16:49:48', '2020-12-27 10:51:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (40, 'm', '1981-10-11', 'Hayesview', 'Mexico', '2020-11-05 13:39:49', '2020-12-12 05:56:27', '2020-11-08 17:24:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (41, 'f', '1988-02-17', 'Javonfurt', 'Sao Tome and Principe', '2020-09-02 01:24:18', '2020-09-05 08:41:06', '2020-06-18 00:10:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (42, 'm', '2001-08-03', 'Goldaview', 'Argentina', '2020-05-06 09:30:13', '2020-12-08 16:06:00', '2020-10-29 21:55:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (43, 'f', '1985-05-23', 'Port Haven', 'Russian Federation', '2020-10-17 15:51:11', '2020-05-12 03:04:23', '2020-09-16 00:16:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (44, 'f', '2018-01-19', 'Predovicbury', 'Israel', '2021-01-04 22:20:00', '2020-12-18 11:53:46', '2020-10-12 22:40:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (45, 'f', '2006-08-12', 'South Finn', 'Egypt', '2020-07-21 11:47:57', '2020-12-02 16:35:59', '2020-10-01 07:08:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (46, 'm', '1977-12-09', 'Beierborough', 'Grenada', '2020-05-30 23:37:55', '2020-05-08 16:21:07', '2020-11-29 17:26:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (47, 'm', '1978-07-31', 'Weimannport', 'France', '2020-10-08 03:24:02', '2020-06-10 13:10:29', '2020-04-13 08:51:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (48, 'm', '1981-08-27', 'West Jammie', 'Suriname', '2020-02-20 05:14:46', '2020-05-28 21:50:43', '2020-10-04 02:32:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (49, 'm', '1987-11-17', 'South Gardner', 'Austria', '2021-01-04 19:09:28', '2020-05-01 20:19:23', '2020-12-11 05:31:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (50, 'f', '1991-02-16', 'Port Clint', 'Equatorial Guinea', '2020-06-14 08:25:20', '2020-11-24 02:33:04', '2020-03-02 19:38:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (51, 'f', '2006-12-29', 'New Liaberg', 'Eritrea', '2020-12-24 05:50:39', '2020-08-05 22:23:01', '2020-11-17 05:15:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (52, 'f', '1981-02-12', 'Bernierberg', 'Iceland', '2020-07-20 15:30:10', '2020-09-14 16:23:14', '2020-06-30 01:48:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (53, 'm', '1982-07-02', 'South Otto', 'Cyprus', '2020-02-27 06:16:24', '2020-12-20 06:53:04', '2020-03-17 02:37:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (54, 'f', '2005-07-23', 'East Shawnfort', 'Ukraine', '2020-08-28 22:35:52', '2020-09-18 09:01:07', '2020-12-06 07:01:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (55, 'f', '1978-12-17', 'Clemensport', 'Austria', '2020-08-04 10:31:38', '2020-10-21 04:16:31', '2020-05-07 04:32:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (56, 'f', '2008-09-04', 'Gustavefort', 'Hong Kong', '2020-03-16 02:38:29', '2020-04-05 17:42:21', '2020-02-22 04:08:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (57, 'm', '1994-03-11', 'Stammberg', 'Brazil', '2020-02-22 13:04:46', '2020-08-31 03:44:11', '2021-01-20 09:57:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (58, 'm', '2001-03-21', 'Streichhaven', 'Canada', '2020-03-17 04:53:17', '2020-09-05 22:50:15', '2020-07-24 02:13:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (59, 'm', '1990-02-27', 'New Elianeshire', 'Marshall Islands', '2020-11-28 09:04:50', '2020-10-10 07:02:31', '2020-03-23 01:28:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (60, 'm', '2004-08-06', 'South Elwynfort', 'Seychelles', '2020-05-07 19:01:27', '2020-06-28 14:09:12', '2020-10-01 03:53:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (61, 'f', '1977-03-28', 'New Chasemouth', 'Turkmenistan', '2020-07-14 18:31:05', '2020-09-27 18:44:35', '2020-09-24 22:32:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (62, 'f', '1992-04-27', 'Lake Lialand', 'French Guiana', '2020-09-13 07:44:08', '2020-09-04 03:39:39', '2020-07-05 02:58:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (63, 'm', '1987-08-28', 'Stromantown', 'Bermuda', '2020-08-17 07:30:36', '2020-06-06 09:30:00', '2020-05-21 02:08:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (64, 'f', '1982-05-17', 'East Janashire', 'Cambodia', '2020-06-20 21:21:32', '2020-11-06 15:20:39', '2020-07-13 09:07:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (65, 'm', '2016-07-31', 'Grantville', 'Bermuda', '2020-09-04 19:41:00', '2020-11-23 04:50:09', '2020-06-21 09:15:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (66, 'f', '2002-08-04', 'New Alfonzo', 'Nepal', '2021-01-28 05:37:32', '2020-11-25 22:11:23', '2020-03-12 23:05:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (67, 'm', '1976-11-29', 'North Noble', 'Somalia', '2020-11-23 01:57:48', '2020-03-01 22:47:40', '2021-01-14 08:33:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (68, 'm', '2000-09-24', 'New Jettie', 'Ghana', '2020-10-20 18:54:28', '2020-04-24 01:45:42', '2020-04-04 21:28:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (69, 'm', '2019-02-12', 'Heidenreichborough', 'Kiribati', '2020-09-26 12:18:17', '2020-08-03 10:04:22', '2020-12-20 16:15:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (70, 'm', '1974-07-23', 'South Ladarius', 'Montserrat', '2020-08-12 13:44:35', '2020-08-22 04:24:39', '2020-09-23 20:30:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (71, 'f', '2005-12-21', 'New Lianaburgh', 'Bahamas', '2020-07-14 04:50:32', '2020-10-22 23:41:20', '2021-01-13 22:20:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (72, 'f', '1988-05-24', 'West Joshuahland', 'Western Sahara', '2020-12-28 14:17:10', '2020-04-25 00:12:05', '2021-02-05 12:00:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (73, 'm', '2014-01-20', 'Rosiestad', 'Slovenia', '2020-12-13 03:26:12', '2020-07-02 22:18:12', '2020-03-07 00:04:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (74, 'f', '2007-03-03', 'South Freidafurt', 'Zambia', '2020-10-21 03:58:34', '2020-11-05 23:45:08', '2020-12-17 04:15:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (75, 'm', '1977-04-16', 'Binsland', 'Maldives', '2021-02-06 01:03:25', '2020-10-27 21:49:45', '2020-03-04 08:59:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (76, 'f', '2018-11-16', 'Christiansenport', 'Cayman Islands', '2020-08-06 05:42:03', '2020-07-26 09:46:09', '2020-04-04 21:19:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (77, 'm', '2018-08-30', 'Stiedemannborough', 'Niger', '2020-03-06 11:38:19', '2020-10-07 15:37:19', '2020-12-17 14:26:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (78, 'm', '1993-09-21', 'Jeramiemouth', 'Cyprus', '2020-10-15 22:43:47', '2020-04-15 14:38:39', '2020-09-02 18:41:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (79, 'f', '2012-01-02', 'South Gideon', 'Bolivia', '2020-03-01 17:32:52', '2020-12-27 15:45:44', '2020-09-12 22:50:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (80, 'f', '1991-01-10', 'South Araceli', 'French Guiana', '2020-10-06 07:44:36', '2021-01-16 21:02:33', '2020-04-14 18:54:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (81, 'f', '1995-01-17', 'East Mathildeville', 'French Polynesia', '2020-08-08 23:14:34', '2020-11-19 01:44:11', '2020-11-24 01:33:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (82, 'm', '1970-03-24', 'Lake Jean', 'United States of America', '2020-02-22 10:05:30', '2020-08-08 18:31:15', '2020-04-12 14:19:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (83, 'f', '2014-02-10', 'Port Arvilla', 'Tuvalu', '2020-07-15 12:58:08', '2020-03-20 13:55:33', '2020-09-09 03:22:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (84, 'm', '2006-08-29', 'Port Sarahhaven', 'Aruba', '2020-03-25 21:26:35', '2020-04-05 07:54:20', '2020-04-26 01:22:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (85, 'm', '1988-03-24', 'Aliburgh', 'Nepal', '2020-08-31 08:07:50', '2020-05-02 01:12:12', '2020-11-29 14:04:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (86, 'f', '1989-12-09', 'Kacistad', 'Aruba', '2020-12-11 09:59:50', '2021-02-07 17:18:22', '2020-06-27 18:35:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (87, 'm', '1970-01-11', 'Boganside', 'Greece', '2020-08-16 23:05:46', '2020-05-25 05:58:08', '2021-01-11 19:06:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (88, 'f', '1999-09-15', 'East Larissaburgh', 'Korea', '2021-02-08 09:23:38', '2020-03-25 12:35:57', '2020-12-17 09:43:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (89, 'f', '1978-05-09', 'Ilaville', 'French Polynesia', '2020-06-26 14:30:41', '2020-06-06 00:40:30', '2021-02-16 12:47:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (90, 'f', '2000-02-03', 'South Alexannefort', 'Peru', '2020-08-03 23:17:01', '2020-11-18 21:53:58', '2020-06-04 04:08:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (91, 'm', '2016-04-20', 'Keelingland', 'Ghana', '2021-01-16 05:44:54', '2020-04-30 03:13:55', '2020-05-03 12:55:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (92, 'f', '1986-12-28', 'Ollieview', 'French Polynesia', '2020-09-25 21:52:40', '2020-03-03 23:56:11', '2020-10-06 13:57:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (93, 'f', '1994-01-19', 'Lake Xander', 'Belarus', '2020-06-01 18:44:33', '2020-10-24 15:02:45', '2020-09-15 15:19:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (94, 'f', '1987-06-20', 'New Eden', 'Indonesia', '2020-07-02 10:58:56', '2020-07-24 02:13:51', '2020-07-30 14:43:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (95, 'm', '1983-11-03', 'New Novellafort', 'Mayotte', '2021-01-14 07:45:30', '2020-05-08 00:31:14', '2021-01-16 07:24:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (96, 'm', '1991-02-24', 'Fidelport', 'Korea', '2020-05-14 03:52:35', '2020-09-17 01:34:05', '2020-11-21 23:18:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (97, 'm', '2012-10-03', 'Mannmouth', 'Azerbaijan', '2020-09-15 17:10:04', '2020-10-12 10:14:48', '2021-01-28 16:28:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (98, 'f', '1976-04-27', 'Wisokymouth', 'Liechtenstein', '2020-06-28 12:06:27', '2020-08-07 18:46:00', '2020-09-30 12:48:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (99, 'm', '2000-05-19', 'Rippinburgh', 'Belarus', '2020-12-19 15:54:57', '2020-12-03 08:06:32', '2020-12-22 01:25:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (100, 'f', '1988-06-26', 'South Amiya', 'British Virgin Islands', '2020-04-10 12:50:39', '2021-01-21 15:17:09', '2020-05-17 13:42:02');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Логин',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'ldicki', 'Kira', 'Walsh', 'sandy26@example.com', '215-740-8311x1452', '2020-04-07 10:10:41', '2020-12-08 16:21:11');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'gusikowski.nash', 'Coy', 'Graham', 'gage29@example.org', '1-920-177-5693x4154', '2020-03-12 14:43:33', '2020-04-01 10:49:58');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'schumm.monte', 'Carley', 'Rohan', 'dustin.denesik@example.com', '(540)310-2756x821', '2020-08-01 08:11:53', '2020-07-20 22:54:22');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'gleason.carolyn', 'Chris', 'Herzog', 'brook41@example.net', '183.226.4762x32819', '2020-10-14 03:10:33', '2020-06-21 07:36:59');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'ikeeling', 'Conor', 'Wolf', 'rwisoky@example.com', '104.878.3487x685', '2020-04-26 14:46:04', '2020-12-31 16:04:44');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'abayer', 'Derrick', 'Gottlieb', 'mclaughlin.justine@example.net', '137.328.2241x03755', '2020-07-09 09:24:34', '2020-06-17 17:03:18');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'cathy.upton', 'Dimitri', 'Lehner', 'ccorwin@example.net', '598-636-2322x007', '2020-09-05 10:29:06', '2020-03-15 19:05:43');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'jevon.emard', 'Gregoria', 'Bartell', 'yherzog@example.org', '1-376-099-6656x205', '2020-09-05 19:18:23', '2020-10-19 03:41:50');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'haskell37', 'Geo', 'Hegmann', 'smitham.kyleigh@example.net', '+14(2)3309448141', '2020-12-11 02:15:08', '2020-04-30 02:12:30');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'destin.kirlin', 'Dejuan', 'Schaefer', 'daren.donnelly@example.net', '1-060-739-9064x408', '2020-04-11 15:06:12', '2020-12-05 03:26:23');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'katelin73', 'Leonie', 'Labadie', 'merritt.bernier@example.org', '04405880765', '2020-06-14 06:09:50', '2020-05-30 23:51:22');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'trever16', 'Napoleon', 'Satterfield', 'xtillman@example.net', '514.425.3811', '2021-01-21 13:13:04', '2021-01-21 08:44:04');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'farrell.tracey', 'Vivien', 'Kreiger', 'kulas.loyal@example.net', '09743451550', '2020-06-27 22:19:56', '2020-08-07 05:27:35');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'vonrueden.garrison', 'Blaise', 'O\'Conner', 'nola62@example.org', '151-307-8431x362', '2020-08-07 03:39:27', '2020-10-24 06:13:33');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'ucummerata', 'Bethany', 'Langworth', 'zkunde@example.com', '(866)603-4960', '2020-02-20 13:02:30', '2021-01-20 14:53:59');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'alfonzo.flatley', 'Marlin', 'Crona', 'jast.cale@example.org', '(637)688-1539x222', '2020-09-06 10:51:11', '2020-10-02 08:46:58');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'leuschke.filiberto', 'Lillian', 'Bayer', 'roselyn39@example.net', '366-809-2097x97038', '2020-05-02 20:50:51', '2021-01-29 04:09:39');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'loyce86', 'Simone', 'Towne', 'terence.runolfsson@example.net', '570.565.0987', '2020-04-26 00:39:08', '2020-11-27 08:29:01');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'harrison40', 'Avis', 'Baumbach', 'cbecker@example.org', '966-345-3316', '2020-11-20 20:37:20', '2020-12-16 13:49:22');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'juliet54', 'Heloise', 'Weimann', 'frankie68@example.net', '(030)762-9013', '2020-07-03 19:59:44', '2021-01-30 19:28:04');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'jjaskolski', 'Maya', 'Watsica', 'prosacco.petra@example.org', '1-329-288-6566', '2020-10-25 19:12:40', '2021-01-29 16:11:51');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'lsatterfield', 'Buster', 'Pfannerstill', 'wsawayn@example.com', '185-917-1584x7001', '2021-01-06 04:58:49', '2020-04-21 14:57:17');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'ryan.hester', 'Elody', 'Rath', 'freida.bosco@example.org', '403.042.8486x25598', '2020-05-27 06:22:38', '2020-11-22 22:14:02');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'dstehr', 'Reba', 'DuBuque', 'mbode@example.com', '192.982.5909x9205', '2020-03-21 06:08:41', '2020-08-10 01:10:35');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'stoltenberg.taurean', 'Titus', 'Sipes', 'rogahn.nelle@example.com', '(026)161-4290x28673', '2020-05-04 23:34:58', '2020-11-13 06:31:35');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'aniya.stracke', 'Columbus', 'Nienow', 'gerard72@example.com', '053-120-0408x42516', '2020-11-24 19:42:17', '2020-09-13 13:17:53');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'monique.blick', 'Hester', 'Bins', 'walsh.ashtyn@example.com', '637-973-2325x966', '2020-11-12 23:55:33', '2020-05-11 22:51:36');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'arjun06', 'Winfield', 'Renner', 'rterry@example.net', '1-282-472-2834x99331', '2020-03-24 09:27:12', '2020-10-13 17:47:48');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'trantow.jaren', 'Rebekah', 'Lemke', 'gabrielle.mcclure@example.net', '1-120-412-4853x10192', '2020-10-27 14:21:28', '2020-10-21 08:49:12');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'gerhard.kulas', 'Katarina', 'Nicolas', 'qemmerich@example.net', '034.620.3910', '2020-05-07 15:41:27', '2020-07-07 03:03:18');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'monserrat.vandervort', 'Nelle', 'Denesik', 'shany.morar@example.net', '479.418.3930x32952', '2020-12-15 07:29:28', '2020-07-26 19:38:13');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'rocky88', 'Citlalli', 'Berge', 'jerrold.oberbrunner@example.com', '(387)566-3795', '2020-05-28 17:41:17', '2020-12-18 07:03:35');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'margaret04', 'Moshe', 'Pagac', 'helen.morar@example.org', '344.737.3695x99506', '2020-09-05 17:28:42', '2020-10-07 11:29:12');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'matilda.ferry', 'Joel', 'Howe', 'iva.pollich@example.org', '428-027-1014x61755', '2020-11-16 11:04:50', '2020-08-16 07:16:47');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'landen85', 'Susana', 'Huels', 'wisoky.nola@example.com', '1-898-486-8042', '2020-08-30 07:42:53', '2020-04-12 04:18:52');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'margarette.sipes', 'Antwan', 'Baumbach', 'anika48@example.com', '05909877266', '2020-12-07 19:47:06', '2020-09-28 03:03:34');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'uhermann', 'Kiana', 'Considine', 'niko.mccullough@example.org', '019.028.5949x7499', '2020-04-08 22:02:01', '2020-10-19 06:24:11');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'dooley.justina', 'Tomas', 'Turner', 'sanford.isabelle@example.com', '677-310-9390', '2020-06-05 17:02:25', '2020-04-02 19:10:45');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'hammes.filomena', 'Harrison', 'Shanahan', 'irunolfsson@example.org', '1-372-150-2465x530', '2020-07-16 14:11:21', '2020-04-20 22:19:20');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'kharris', 'Rebekah', 'Schmidt', 'ebert.nettie@example.org', '+00(1)9411474090', '2020-10-05 03:00:05', '2020-09-28 15:05:45');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'kherzog', 'Tito', 'O\'Conner', 'ischaefer@example.net', '250-374-9754x8955', '2020-03-04 05:12:59', '2020-05-24 22:53:46');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'maltenwerth', 'Delmer', 'Stehr', 'alexane.labadie@example.net', '050-956-2154x54019', '2020-03-29 16:51:18', '2020-10-06 11:47:07');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'eloy.schmeler', 'Orlo', 'Vandervort', 'aletha.paucek@example.net', '1-477-989-8149', '2020-05-06 13:15:17', '2020-11-27 16:36:50');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'hermiston.corine', 'Teresa', 'Zulauf', 'britchie@example.org', '(096)606-8528x23348', '2020-02-29 14:18:05', '2021-02-12 15:40:16');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'johann.reinger', 'Estrella', 'McKenzie', 'alexis.streich@example.net', '02077594117', '2021-02-12 15:43:01', '2020-12-11 15:40:44');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'hauck.rosanna', 'Lera', 'Bailey', 'mona.wintheiser@example.net', '292.547.3431x750', '2020-07-22 22:14:22', '2020-04-09 05:15:05');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'hauck.johnathan', 'Renee', 'Bailey', 'mikel13@example.org', '01652002877', '2020-12-02 15:09:15', '2020-08-24 20:47:29');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'alexa.kozey', 'Hilton', 'Hoeger', 'billy.parisian@example.net', '(242)964-5139x7241', '2020-07-06 10:29:15', '2020-11-10 17:48:06');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'daniel.dalton', 'Ardith', 'Quigley', 'kihn.cloyd@example.com', '02906042866', '2020-02-22 01:12:15', '2020-03-04 07:34:47');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'suzanne.o\'keefe', 'Jordy', 'Schumm', 'gorczany.aida@example.org', '02376566004', '2020-05-22 07:07:28', '2020-06-29 16:09:49');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'kuhn.vida', 'Jena', 'Keebler', 'emard.angeline@example.net', '1-992-146-3105', '2020-09-02 10:56:56', '2020-03-17 06:30:30');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'uvon', 'Kellie', 'Howell', 'tobin.hansen@example.net', '(216)607-0887x3265', '2020-06-19 17:37:06', '2020-04-20 00:37:28');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'cbruen', 'Myrtle', 'Jacobson', 'smitham.kelvin@example.com', '+13(8)6056760285', '2020-05-31 04:59:21', '2020-08-24 17:57:11');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'nicklaus42', 'Will', 'D\'Amore', 'ashleigh74@example.net', '494.697.1092', '2021-01-16 03:06:01', '2020-08-12 03:33:59');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'delia98', 'Lura', 'Treutel', 'timmothy03@example.net', '1-054-298-2154x53188', '2020-05-10 04:24:19', '2020-09-13 08:30:34');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'yhoeger', 'Abbey', 'Altenwerth', 'bianka01@example.com', '500.766.4774', '2020-04-27 08:07:11', '2020-04-10 20:28:32');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'chelsie62', 'Sandra', 'Rosenbaum', 'daniela.hilll@example.org', '453-472-2679', '2020-12-12 13:26:44', '2020-10-08 18:17:04');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'gerda72', 'Dakota', 'Huel', 'eusebio.luettgen@example.com', '(348)188-6709', '2020-09-14 16:29:37', '2020-09-29 15:55:03');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'bbotsford', 'Dee', 'Stanton', 'conor44@example.org', '759-316-9116x572', '2020-12-28 10:21:24', '2020-04-17 04:14:47');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'kiel18', 'Wilford', 'Rosenbaum', 'halvorson.garth@example.net', '07505486560', '2020-05-30 21:08:11', '2021-02-08 03:48:20');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'fglover', 'Thurman', 'Schmidt', 'yasmin86@example.org', '1-584-703-1557', '2020-03-02 00:38:43', '2020-07-15 12:41:57');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'imurazik', 'Ubaldo', 'Kuphal', 'elta66@example.net', '797-422-4551x620', '2020-09-22 15:41:22', '2020-03-09 02:40:40');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'treva.kozey', 'Adrain', 'Beier', 'beatty.dewitt@example.net', '09919168801', '2020-09-25 04:30:46', '2020-06-25 17:27:07');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'hwilliamson', 'Gaylord', 'Herzog', 'mollie.stanton@example.org', '(903)424-9467x7810', '2021-01-28 12:55:00', '2021-02-08 16:46:56');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'qrussel', 'Aletha', 'Monahan', 'mjones@example.com', '001-341-1992x3057', '2020-03-11 17:38:49', '2020-10-02 11:25:40');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'hegmann.summer', 'Syble', 'Kozey', 'block.zachery@example.net', '800-213-1117x1417', '2021-02-15 11:03:04', '2021-02-11 21:20:03');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'shanahan.jazmyne', 'Omari', 'Hermann', 'shanon75@example.com', '(635)204-6289x48960', '2021-01-09 16:10:24', '2020-06-14 12:55:15');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'frank.welch', 'Karianne', 'Jacobson', 'kiley.crona@example.net', '979.265.2500', '2020-08-19 22:19:07', '2020-12-07 08:18:03');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'kiehn.alvah', 'Monroe', 'Wyman', 'wilhelmine04@example.net', '(386)213-3392', '2020-09-07 23:26:11', '2021-01-27 10:26:51');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'lkuvalis', 'Armani', 'Strosin', 'jeramy.pfeffer@example.com', '1-917-223-7637', '2020-11-07 20:15:44', '2020-02-24 20:58:37');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'runolfsdottir.katarina', 'Molly', 'Brekke', 'ksanford@example.com', '(960)166-4737x357', '2020-10-05 15:40:05', '2020-04-28 21:08:01');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'syble22', 'Darrion', 'Hudson', 'angus.bogan@example.net', '(457)058-8244x9101', '2021-02-15 19:45:47', '2020-07-05 05:27:07');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'deanna15', 'Jody', 'Shields', 'vhaley@example.com', '090.291.7013x7323', '2020-12-28 23:03:43', '2020-04-26 05:32:21');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'jasmin.kling', 'Fredrick', 'Kozey', 'vbraun@example.org', '(931)063-2862', '2020-02-19 17:13:34', '2020-10-28 01:35:30');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'jenkins.gus', 'Karlie', 'Ebert', 'tward@example.net', '158-644-6821x026', '2020-11-23 18:56:01', '2020-03-15 18:25:34');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'fschultz', 'Carmine', 'Beatty', 'leila97@example.com', '028-211-9320x1491', '2020-08-04 13:22:18', '2021-02-17 06:36:10');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'qjakubowski', 'Carmelo', 'Brekke', 'fahey.dorris@example.org', '1-761-855-8233', '2020-12-05 12:42:57', '2020-08-15 14:09:41');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'brown53', 'Nettie', 'Pollich', 'kale61@example.com', '(760)539-2029x3695', '2021-01-17 23:46:35', '2021-02-01 20:54:37');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'otorphy', 'Eriberto', 'Emmerich', 'jkris@example.com', '05978816109', '2020-04-04 13:26:58', '2020-02-23 18:57:53');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'shermiston', 'Adalberto', 'Kulas', 'meda.weber@example.net', '(521)152-0097x1608', '2020-05-07 09:45:23', '2021-01-05 14:30:05');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'sydney.abbott', 'Justus', 'Bode', 'adelle40@example.org', '1-314-057-1210', '2020-04-28 11:56:54', '2020-11-09 23:59:41');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'von.renee', 'Chelsea', 'Rolfson', 'keanu10@example.net', '09058955765', '2020-09-11 01:42:19', '2020-04-17 08:17:42');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'tkeebler', 'Rickie', 'Smith', 'humberto34@example.org', '929.479.7919x001', '2020-09-27 13:58:01', '2020-04-19 06:33:09');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'alvis.block', 'Richie', 'Bernhard', 'schoen.agustin@example.org', '867.118.8380x1992', '2020-11-28 08:13:30', '2020-10-30 09:27:20');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'landen43', 'Princess', 'Terry', 'adrienne.heidenreich@example.org', '05974352672', '2021-01-27 05:12:31', '2020-11-11 08:36:36');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'kutch.gayle', 'Jett', 'White', 'meda.kling@example.com', '1-738-611-4615x3512', '2020-12-05 22:23:30', '2020-09-30 00:46:51');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'jamil.huels', 'Noah', 'Hartmann', 'olga.adams@example.net', '1-013-916-1940x0364', '2020-06-24 15:47:42', '2020-10-03 17:34:48');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'christiana.fay', 'Angelo', 'Friesen', 'myrna81@example.net', '339-010-3082x8385', '2020-06-22 01:06:42', '2020-03-21 14:26:11');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'schaden.liliana', 'Zaria', 'Hessel', 'dock.smitham@example.net', '868-524-0391x943', '2020-08-02 14:50:50', '2020-11-12 17:02:40');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'koepp.demarco', 'Shanelle', 'Mraz', 'beer.mabelle@example.net', '1-565-164-0790x69876', '2020-08-08 09:52:08', '2020-12-17 19:44:30');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'icasper', 'Stephen', 'Williamson', 'daugherty.paul@example.net', '1-698-654-7766', '2020-08-30 15:50:58', '2020-10-01 14:57:19');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'douglas.margie', 'George', 'Larkin', 'samara.skiles@example.net', '1-448-828-8932', '2020-12-24 12:19:04', '2020-10-10 18:07:32');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'milton59', 'Giovanna', 'Schimmel', 'lehner.gertrude@example.com', '(212)274-6580x98663', '2021-02-11 04:24:20', '2020-12-27 13:36:37');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'howe.julia', 'Rhoda', 'Goldner', 'percival.cartwright@example.net', '01895280265', '2020-09-19 17:48:46', '2020-02-22 03:47:15');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'kim40', 'Makenzie', 'Skiles', 'shaylee.cronin@example.com', '+10(1)4799371053', '2020-06-02 21:30:07', '2020-10-06 07:41:36');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'luis34', 'Candida', 'Hansen', 'aisha.botsford@example.net', '444-793-7628', '2020-10-26 01:18:18', '2020-12-24 00:41:35');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'fruecker', 'Marcia', 'Monahan', 'franecki.rosalyn@example.org', '(913)883-3058x3940', '2020-12-19 18:50:41', '2020-11-20 08:07:04');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'arturo.mayert', 'Violette', 'Will', 'hickle.johann@example.net', '544.107.5469', '2020-04-23 20:10:51', '2020-07-08 04:11:44');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'kjohnston', 'Abdullah', 'Breitenberg', 'izaiah.senger@example.net', '121.608.9348x9230', '2020-12-04 23:57:02', '2020-11-23 08:20:23');
INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'auer.owen', 'Jacques', 'Legros', 'kheaney@example.net', '905-214-5796x7906', '2020-07-02 15:40:14', '2020-11-20 13:47:19');


