-- Представления

-- Списки пользователей в разрезе компаний

CREATE OR REPLACE VIEW companies_users AS
SELECT
  units.name,
  count(users.first_name) 'number of employees',
  GROUP_CONCAT(concat( users.first_name, ' ', users.last_name) SEPARATOR ', ') as employees
FROM units 
  LEFT JOIN users_units 
    ON units.id = users_units.unit_id 
  LEFT JOIN users  
    ON users.id = users_units.user_id
WHERE units.type = 'company'
    GROUP BY units.id;

SELECT * FROM companies_users;
   
-- Самые активные  пользователи
CREATE OR REPLACE VIEW users_activity AS
SELECT us.id, concat(us.first_name, ' ', us.last_name ) name,
  GROUP_CONCAT(DISTINCT un.name SEPARATOR ', ') companies, 
  COUNT(DISTINCT posts.id) + 
  COUNT(DISTINCT comments.id) + 
  COUNT(DISTINCT messages.id) +
  COUNT(DISTINCT todo_lists.id) AS activity 
FROM users us
    LEFT JOIN posts 
      ON us.id = posts.creator_id 
    LEFT JOIN comments
      ON us.id = comments.creator_id
    LEFT JOIN messages
      ON us.id = messages.creator_id
    LEFT JOIN todo_lists
      ON us.id = todo_lists.creator_id
    LEFT JOIN users_units uu 
      ON us.id = uu.user_id
    LEFT JOIN units un
      ON un.id = uu.unit_id and un.`type` = 'company'
  GROUP BY us.id 
  ORDER BY activity DESC
  LIMIT 20;
  
 SELECT * FROM users_activity;
