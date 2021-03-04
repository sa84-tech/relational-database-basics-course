USE vk;

-- 1. Создать и заполнить таблицы лайков и постов.

-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;


 -- Таблица постов
 
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


SELECT * FROM likes;

SELECT * FROM posts;


-- 2. Создать все необходимые внешние ключи и диаграмму отношений.

-- Таблица профилей

DESC profiles;

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;


-- Таблица сообщений

DESC messages;

ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id);
   
   
-- Таблица связи пользователей и групп

DESC communities_users;

ALTER TABLE communities_users
  ADD CONSTRAINT communities_users_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT communities_users_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;
   

 -- таблица дружбы
 
DESC friendship;

ALTER TABLE friendship 
  ADD CONSTRAINT friendship_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT friendship_friend_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT  friendship_friendship_status_id_fk 
    FOREIGN KEY (friendship_status_id) REFERENCES friendship_statuses(id);

     
 -- таблица media
 
DESC media;

ALTER TABLE media 
  ADD CONSTRAINT media_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT  media_media_type_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id);
   
      
 -- таблица лайков
 
DESC likes;

ALTER TABLE likes 
  ADD CONSTRAINT likes_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT  likes_target_type_id_fk 
    FOREIGN KEY (target_type_id) REFERENCES target_types(id);
   

 -- таблица постов
 
DESC posts ;

ALTER TABLE posts 
  ADD CONSTRAINT posts_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT posts_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE SET NULL,
  ADD CONSTRAINT  posts_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE SET NULL;
   
     
-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT 
  IF(
    (SELECT COUNT(user_id)
      FROM likes
      WHERE 
       (SELECT gender 
         FROM profiles 
         WHERE likes.user_id = user_id) = 'm') >= 
    (SELECT COUNT(user_id) FROM likes) / 2,
    CONCAT('men won - ', (SELECT COUNT(user_id) as c
                            FROM likes
                            WHERE 
                              (SELECT gender 
                               FROM profiles 
                               WHERE likes.user_id = user_id) = 'm'),' likes'
    ),
    CONCAT('women won - ', (SELECT COUNT(user_id) as c
                            FROM likes
                            WHERE 
                              (SELECT gender 
                               FROM profiles 
                               WHERE likes.user_id = user_id) = 'f'),' likes'
     )) 
  AS 'like to like';
  
 
-- 4. Подсчитать количество лайков которые получили 10 самых молодых пользователей. 
        
SELECT COUNT(id) AS 'number of likes'
FROM likes 
WHERE target_id IN (
  SELECT * FROM (
    SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10) AS users
);


-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в
-- использовании социальной сети

-- Активность определяется по общему количеству лайков, постов и сообщений

SELECT 
  username,
  (
    (SELECT count(id) FROM likes WHERE user_id = users.id) +
    (SELECT count(id) FROM posts WHERE user_id = users.id) +
    (SELECT count(id) FROM messages WHERE from_user_id = users.id)
  ) AS activity
FROM users
ORDER BY activity, username 
LIMIT 10;


-- для проверки
SELECT 
  username,
  (SELECT count(id) FROM likes WHERE user_id = users.id) as likes,
  (SELECT count(id) FROM posts WHERE user_id = users.id) as posts,
  (SELECT count(id) FROM messages WHERE from_user_id = users.id) as messages
FROM users
ORDER BY likes + posts + messages, username 

 