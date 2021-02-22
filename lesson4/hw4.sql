use vk;

SHOW TABLES;


-- Таблица пользователей
DESC users;

SELECT * FROM users LIMIT 100;

-- Исправить:
-- 1. Номера телефонов
-- 2. Дату обновления, там где она меньше даты создания

-- обновить номера телефонов, при этом обновиться поле updated_at 
UPDATE users SET phone = CONCAT('+79', FLOOR((8 * RAND() + 2) * 100000000));

SELECT * FROM users;


-- таблица профилей
DESC profiles;

SELECT * FROM profiles LIMIT 100;

-- Исправить:
-- 1. Дата last_login не должна обновляться при внесении изменений в профиль, необходимо убрать автообнление
-- 2. Дата updated_at и last_login не могут быть меньше даты created_at
-- 3. Сократить количество стран

ALTER TABLE profiles MODIFY COLUMN last_login TIMESTAMP COMMENT "Последний вход в систему"

UPDATE profiles SET last_login = SUBDATE(NOW(), INTERVAL 5 MINUTE) WHERE updated_at < created_at;  

UPDATE profiles SET updated_at = NOW() WHERE updated_at < created_at;  

-- Создаём временную таблицу стран
CREATE TEMPORARY TABLE countries(name VARCHAR(50));

-- Добавим страны
INSERT INTO countries VALUES
  ('Russian Federation'),
  ('Belarus'),
  ('Kazakhstan'),
  ('Italy');
  
UPDATE profiles SET country = (SELECT name FROM countries ORDER BY RAND() LIMIT 1);  


-- Таблица сообщений

DESC messages;

SELECT * FROM messages LIMIT 10;

-- Оставить без изменений


-- Таблица статусов дружбы

DESC friendship_statuses ;

SELECT * FROM friendship_statuses LIMIT 100;

-- Исправить:
-- 1. Оставить три типа статуса: Requested, Confirmed, Rejected

TRUNCATE friendship_statuses;

INSERT INTO friendship_statuses (name) VALUES
  ('Requested'),
  ('Confirmed'),
  ('Rejected');


-- Таблица дружбы

DESC friendship ;

SELECT * FROM friendship LIMIT 10;

-- Исправить:
-- 1. Проверить есть ли записи с user_id = friend_id, исправить при наличии
-- 2. Откорректировать friendship_status_id соглансно новому диапазону возможных id  

UPDATE friendship SET friend_id = friend_id + 1 WHERE user_id = friend_id;

UPDATE friendship SET friendship_status_id = FLOOR(1 + RAND() * 3);


-- Таблица групп

DESC communities ;

SELECT * FROM communities;

-- Оставить без изменений


-- Таблица типов медиаконтента

DESC media_types ;

SELECT * FROM media_types;

-- Оставить типы медиаконтента: photo, audio, vidio

TRUNCATE media_types;

INSERT INTO media_types (name) VALUES
  ('photo'),
  ('video'),
  ('audio')
;


-- Таблица медиаконтента

DESC media ;

SELECT * FROM media;

-- Исправить:
-- 1. Обновить данные по ссылке на тип

UPDATE media SET media_type_id = FLOOR(1 + RAND() * 3);

-- 2. Обновить ссылку на пользовалтеля владельца

UPDATE media SET user_id = FLOOR(1 + RAND() * 100);

-- 3. Обновить ссылки на файл
DROP TABLE IF EXISTS extensions;
CREATE TEMPORARY TABLE extensions (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY key,
	name VARCHAR(10));

INSERT INTO extensions (name) VALUES ('jpg');
INSERT INTO extensions (name) VALUES ('avi');
INSERT INTO extensions (name) VALUES ('mp3');

UPDATE media SET filename = CONCAT(
  'https://www.dropbox.com/s/',
  filename,
  '.',
  (SELECT name FROM extensions WHERE extensions.id = media.media_type_id)
);

-- 4. Обновить размер файлов

UPDATE media SET size = FLOOR(10000 + (RAND() * 1000000)) WHERE size < 1000;

-- 5. Заполнить метаданные

ALTER TABLE media MODIFY COLUMN metadata JSON;

UPDATE media SET metadata = CONCAT('{"owner":"', 
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
  '"}');  

