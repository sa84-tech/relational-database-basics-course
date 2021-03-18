
-- Задание 10. Задания на БД vk:

USE vk;


-- 1. Проанализировать какие запросы могут выполняться наиболее
-- часто в процессе работы приложения и добавить необходимые индексы.

SHOW TABLES FROM vk;


-- ТАБЛИЦА ПОЛЬЗОВАТЕЛЕЙ

DESC users;

SHOW INDEX FROM users;

-- В таблице users присутствуют индексы для полей id , email, phone и username
-- Необходимо добавить составной индекс по last_name и first_name для оптимизации поиска по фамилии и имени. 

CREATE INDEX last_name_first_name_idx ON users(last_name, first_name);

EXPLAIN SELECT * FROM users WHERE last_name = 'Pagac' AND first_name = 'Moshe';

-- без индекса число записей кот. необходимо прочитать для выполнения запроса - 100
-- при использовании last_name_first_name_idx  - 1


-- ТАБЛИЦА ПРОФИЛЕЙ

DESC profiles;

SHOW INDEX FROM profiles;

-- Добавить составной индекс country, city для оптимизации поиска по месту жительства

CREATE INDEX country_city_idx ON profiles(country, city);

-- Добавить индекс birthday для оптимизации поиска и сортировки по дате рождения

CREATE INDEX birthday_idx ON profiles(birthday);

EXPLAIN SELECT * FROM profiles where birthday = '1986-12-16';

EXPLAIN SELECT * FROM profiles WHERE country = 'Russian Federation' AND city = 'Port Clint';


-- ТАБЛИЦА СООБЩЕСТВ

DESC communities;

SHOW INDEX FROM communities;

-- В таблице автоматически добавлные индексы для id и name. Дополнительных индексов не требуется


-- ТАБЛИЦА СВЯЗИ СООБЩЕСТВ И ПОЛЬЗОВАТЕЛЕЙ

DESC communities_users;

SHOW INDEX FROM communities_users;

-- В таблице автоматически добавлны составной индекс communitity_id-user_id и индекс для поля user_id. Дополнительных индексов не требуется


-- ТАБЛИЦА ДРУЖБЫ

DESC friendship;

SHOW INDEX FROM friendship;

-- В таблице автоматически добавлны составной индекс user_id-friend_id и простые индексы для friend_id и friendship_status_id. Дополнительных индексов не требуется


-- ТАБЛИЦА СТАТУСОВ ДРУЖБЫ

DESC friendship_statuses;

SHOW INDEX FROM friendship_statuses;

-- В таблице автоматически добавлны индексы для id и name. Дополнительных индексов не требуется


-- ТАБЛИЦА ЛАЙКОВ

DESC likes;

SHOW INDEX FROM likes;

-- В таблице автоматически добавлны индексы для id и user_id и target_type_id. 
-- Добавить составной индекс для полей target_type_id и target_id - данный индекс позволить ускорить 
-- определение количества лайков для отдельного элемента, например поста

CREATE INDEX targets_idx ON likes(target_type_id, target_id);

EXPLAIN SELECT 
  COUNT(id) FROM likes 
WHERE target_type_id = 4
AND target_id IN (2, 5, 64, 65);

-- при использовании индекса likes_target_type_id_fk, число записей кот. необходимо прочитать для выполнения запроса - 21
-- при targets_idx - 5


-- ТАБЛИЦА МЕДИА ДАННЫХ

DESC media;

SHOW INDEX FROM media;

-- В таблице автоматически добавлны индексы для id и user_id и media_type_id. 
-- Дополнительных индексов не требуется

EXPLAIN SELECT filename FROM media ;


-- ТАБЛИЦА ТИПОВ МЕДИА ДАННЫХ

DESC media_types;

SHOW INDEX FROM media_types;

-- В таблице автоматически добавлны индексы для id и user_id и media_type_id. Таблица слижком мала,
-- дополнительных индексов не требуется


-- ТАБЛИЦА СООБЩЕНИЙ

DESC messages ;

SHOW INDEX FROM messages;

-- В таблице автоматически добавлны индексы для id и from_user_id и from_user_id. 
-- Дополнительных индексов не требуется


-- ТАБЛИЦА ПОСТОВ

DESC target_types;

SELECT * FROM target_types tt ;
SHOW INDEX FROM target_types;

-- Дополнительных индексов не требуется



-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый старший пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100
     
       
SELECT DISTINCT c.name 'Group Name', 
  (SELECT AVG(_count) FROM 
    (SELECT DISTINCT community_id, COUNT(user_id) OVER(PARTITION BY community_id) _count FROM communities_users) t) AS 'Average',
  FIRST_VALUE(birthday) OVER b AS 'First',
  LAST_VALUE(birthday) OVER(b RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) 'Last',
  COUNT(cu.user_id) OVER w AS 'Users in group',
  (SELECT COUNT(id) FROM users) AS 'Total number of users',
  COUNT(cu.user_id) OVER w / (SELECT COUNT(id) FROM users) * 100 AS '%'
FROM communities c
      LEFT JOIN communities_users cu 
        ON c.id = cu.community_id
      LEFT JOIN users u
        ON user_id = u.id
      LEFT JOIN profiles p 
        ON cu.user_id = p.user_id 
      WINDOW 
        w AS (PARTITION BY c.id),
        b AS (PARTITION BY c.id ORDER BY p.birthday);

