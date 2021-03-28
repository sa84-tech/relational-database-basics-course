-- Запросы

--
-- Отображение домашней страницы после авторизации.
--

-- 1. Отбразить компоненты доступные пользователю c id = 4 

SET @user = 4;

-- Компания (компании) к которой пренадлежит пользователь
SELECT name 
FROM units un 
WHERE `type` = 'company' 
AND id IN (SELECT unit_id FROM users_units uu2 WHERE user_id = @user);

-- команды в которые входит пользователь 
SELECT id, name, details 
FROM units un 
WHERE `type` = 'team' 
AND id IN (SELECT unit_id FROM users_units uu2 WHERE user_id = @user);

-- проекты над которыми работает пользователь
SELECT id, name, details 
FROM units un 
WHERE `type` = 'project' 
AND id IN (SELECT unit_id FROM users_units uu2 WHERE user_id = @user);

-- Интерфейс домашней страницы разделен на 3 секции - Компания, Команды и Проекты. 
-- В каждой секцие размещаются соответствующие вложенные компонены.
-- Для авторизованного пользователя отображаются только те компании, команды или проекты, участником которых он является.
-- На компонентах отображается следующая информацпия:  название, описание (опционально) и иконки участников.

SELECT un.id, un.name, details, GROUP_CONCAT(concat(m.file_path,m.filename) SEPARATOR ',') participants 
FROM units un 
LEFT JOIN users_units uu ON uu.unit_id = un.id
LEFT JOIN users us ON uu.user_id = us.id
LEFT JOIN media m ON us.id = m.target_id AND target_type = 'user'
WHERE `type` = 'project' 
AND un.id IN (SELECT unit_id FROM users_units WHERE user_id = @user)
GROUP BY un.id;


-- 2. При входе в один из компонентов, например проект отображаются 5 инструментов:
-- "Message Board", "To-dos", "Docs & Files", "Campfire" и "Schedule"

SET @project = 41;
SET @team = 25;

-- отобразить последних 5 постов на Message Board
SELECT p.id post_id,un.id unit_id, us.id user_id, concat(m.file_path,m.filename) avatar, pc.name category,p.head title, left(p.body, 50) body
  FROM posts p
    LEFT JOIN users us ON p.creator_id = us.id
    LEFT JOIN units un ON p.unit_id = un.id
    LEFT JOIN media m ON p.creator_id = m.creator_id AND m.media_type = 'avatar'
    LEFT JOIN post_categories pc ON pc.id = p.category_id
  WHERE un.id = @project
  ORDER BY p.created_at DESC
  LIMIT 5;
 
 
 -- 3. При входе в "Message Board" отображаются все посты соответствующего компонента осортированные по дате
 SELECT p.id post_id, concat(m.file_path,m.filename) avatar, pc.name category,p.head title, left(p.body, 50) body, p.created_at 
  FROM posts p
    LEFT JOIN users us ON p.creator_id = us.id
    LEFT JOIN units un ON p.unit_id = un.id
    LEFT JOIN media m ON p.creator_id = m.creator_id AND m.media_type = 'avatar'
    LEFT JOIN post_categories pc ON pc.id = p.category_id
  WHERE un.id = @team
  ORDER BY p.created_at DESC;
 
 
 -- 4. переход к посту c id 131
 
 SET @post = 131;

-- Добавить несколько комментариев к посту

INSERT INTO comments VALUES (NULL,'post',@post, (SELECT user_id FROM users_units WHERE unit_id = @team ORDER BY user_id DESC LIMIT 1), 'some dummy text', now(),now());
INSERT INTO comments VALUES (NULL,'post',@post, (SELECT user_id FROM users_units WHERE unit_id = @team ORDER BY user_id LIMIT 1), 'another dummy text', now(),now());
INSERT INTO comments VALUES (NULL,'post',@post, (SELECT user_id FROM users_units WHERE unit_id = @team ORDER BY user_id LIMIT 1), 'another dummy text', now(),now());

-- Пост
 SELECT 
   p.id post_id, 
   concat(m.file_path,m.filename) avatar, 
   concat(us.first_name, ' ', us.last_name) `user`, 
   pc.name category,
   p.head title, 
   p.body body, 
   (SELECT count(id) FROM comments WHERE target_type = 'post' AND target_id = @post) 'comments count',
   p.created_at
 FROM posts p
   LEFT JOIN users us ON p.creator_id = us.id
   LEFT JOIN units un ON p.unit_id = un.id
   LEFT JOIN media m ON p.creator_id = m.creator_id AND m.media_type = 'avatar'
   LEFT JOIN post_categories pc ON pc.id = p.category_id
 WHERE p.id = @post
 ORDER BY p.created_at DESC;
 
 SELECT * FROM users_units uu WHERE uu.unit_id = @team;
 
 -- Вывод комментариев связанных с постом
 
 
 SELECT concat(u.first_name, ' ',u.last_name) name, c.body, c.created_at FROM comments c 
   LEFT JOIN users u ON u.id = c.creator_id
 WHERE target_type = 'post' AND target_id = @post;
 


 
