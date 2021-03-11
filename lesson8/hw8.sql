USE vk;

-- Переписать запросы, заданые к ДЗ урока 6, с использованием JOIN.
     
-- 1. Определить кто больше поставил лайков (всего) - мужчины или женщины?
 
   
SELECT 
  p.gender,
  COUNT(id) AS total
FROM likes l 
JOIN profiles p
USING (user_id)
GROUP BY p.gender
ORDER BY total DESC
LIMIT 1;

-- для проверки

SELECT
	(SELECT gender FROM profiles WHERE user_id = likes.user_id) AS gender,
	COUNT(*) AS total
    FROM likes
    GROUP BY gender
    ORDER BY total DESC
    LIMIT 1;  
 
   
-- 2. Подсчитать количество лайков которые получили 10 самых молодых пользователей. 
        
SELECT COUNT(id) AS 'total likes' FROM likes l
JOIN (SELECT user_id, birthday FROM profiles ORDER BY birthday DESC LIMIT 10) AS p
ON l.target_id = p.user_id AND l.target_type_id = 2;

-- для проверки 

SELECT COUNT(*) FROM likes 
  WHERE target_type_id = 2
    AND target_id IN (SELECT * FROM (
      SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10
    ) AS sorted_profiles );
 

-- 3. Найти 10 пользователей, которые проявляют наименьшую активность в
-- использовании социальной сети

-- Активность определяется по общему количеству лайков, постов и сообщений

WITH temp AS (
  SELECT user_id, COUNT(id) AS count FROM likes GROUP BY user_id 
  UNION ALL
  SELECT user_id, COUNT(id) FROM posts GROUP BY user_id  
  UNION ALL
  SELECT from_user_id, COUNT(id) FROM messages GROUP BY from_user_id 
)
SELECT username, SUM(temp.count) as activity
FROM temp 
RIGHT JOIN users u ON u.id = temp.user_id
GROUP BY u.username
ORDER BY activity, u.username 
LIMIT 10;

-- для проверки

SELECT 
  username, 
	(SELECT COUNT(*) FROM likes WHERE likes.user_id = users.id) + 
	(SELECT COUNT(*) FROM posts WHERE posts.user_id = users.id) + 
	(SELECT COUNT(*) FROM messages WHERE messages.from_user_id = users.id) AS activity 
	  FROM users
	  ORDER BY activity, username
	  LIMIT 10;
	  

