USE project_management;


-- функция для проверки существования строки с идентификатором target_id в соответствующей таблице
DROP FUNCTION IF EXISTS is_row_exists;
DELIMITER //

CREATE FUNCTION is_row_exists (target_id bigint, target_type varchar(10))
RETURNS BOOLEAN READS SQL DATA

BEGIN
  DECLARE table_name VARCHAR(10);
  SELECT target_type INTO table_name;
  
  CASE table_name
    WHEN 'comment' THEN
      RETURN EXISTS(SELECT 1 FROM comments WHERE id = target_id);
    WHEN 'document' THEN 
      RETURN EXISTS(SELECT 1 FROM documents WHERE id = target_id);
    WHEN 'event' THEN
      RETURN EXISTS(SELECT 1 FROM events WHERE id = target_id);
    WHEN 'post' THEN
      RETURN EXISTS(SELECT 1 FROM posts WHERE id = target_id);
    WHEN 'todo_list' THEN
      RETURN EXISTS(SELECT 1 FROM todo_lists WHERE id = target_id);
    WHEN 'todo' THEN
      RETURN EXISTS(SELECT 1 FROM todos WHERE id = target_id);
    WHEN 'user' THEN
      RETURN EXISTS(SELECT 1 FROM users WHERE id = target_id);
    WHEN 'unit' THEN
      RETURN EXISTS(SELECT 1 FROM units WHERE id = target_id);
    ELSE 
      RETURN FALSE;
  END CASE;
END//

DELIMITER ;


-- тригер для проверки целостности данных в таблице медиа при добавлении новой строки 

DROP TRIGGER IF EXISTS media_validation;

DELIMITER //

CREATE TRIGGER media_validation BEFORE INSERT ON media

FOR EACH ROW BEGIN
  IF !is_row_exists(NEW.target_id, NEW.target_type) THEN
    SIGNAL SQLSTATE "45000"
    SET MESSAGE_TEXT = "Error adding media! Target table doesn't contain row id provided!";
  END IF;
END//

DELIMITER ;

-- тест

-- INSERT INTO `media` (`id`, `creator_id`, `target_type`, `target_id`, `media_type`, `filename`, `size`, `metadate`, `file_path`) VALUES ('201', '1', 'event', '1', 'video', 'harum.mvk', '52543', NULL, 'https://dropbox.com/3343/');
-- INSERT INTO `media` (`id`, `creator_id`, `target_type`, `target_id`, `media_type`, `filename`, `size`, `metadate`, `file_path`) VALUES ('202', '2', 'comment', '2', 'photo', 'minus.jpg', '9758923', NULL, 'https://dropbox.com/3343/');
-- INSERT INTO `media` (`id`, `creator_id`, `target_type`, `target_id`, `media_type`, `filename`, `size`, `metadate`, `file_path`) VALUES ('203', '3', 'document', '3', 'video', 'autem.avi', '6', NULL, 'https://dropbox.com/3343/');

-- с ошибкой
-- INSERT INTO `media` (`id`, `creator_id`, `target_type`, `target_id`, `media_type`, `filename`, `size`, `metadate`, `file_path`) VALUES ('204', '4', 'event', '44400', 'audio', 'rerum.mp3', '1907', NULL, 'https://dropbox.com/3343/');
-- INSERT INTO `media` (`id`, `creator_id`, `target_type`, `target_id`, `media_type`, `filename`, `size`, `metadate`, `file_path`) VALUES ('205', '5', 'comment', '55500', 'video', 'qui.mp4', '110', NULL, 'https://dropbox.com/3343/');


-- SELECT * FROM media ORDER BY id DESC LIMIT 1;

-- SELECT * FROM media WHERE  target_id = 6


-- тригер для проверки целостности данных в таблице chats при добавлении новой строки 

DROP TRIGGER IF EXISTS chats_validation;

DELIMITER //
CREATE TRIGGER chats_validation BEFORE INSERT ON chats

FOR EACH ROW BEGIN
  IF !is_row_exists(NEW.target_id, NEW.target_type) THEN
    SIGNAL SQLSTATE "45000"
    SET MESSAGE_TEXT = "Error adding chat! Target table doesn't contain row id provided!";
  END IF;
END//

DELIMITER ;

DESC chats;

SELECT * FROM chats;

-- INSERT INTO `chats`(target_type, target_id) VALUES ('user',1),('user',2),('user',3),('user',4),('user',5),('user',6),('user',7),('user',8),('user',9),('user',10),('user',11),('user',12),('user',13),('user',14),('user',15),('user',16),('user',17),('user',18),('user',19),('user',20);
-- INSERT INTO `chats`(target_type, target_id) VALUES ('user',1123123),('user',2232);


-- тригер для проверки целостности данных в таблице comments при добавлении новой строки 

DROP TRIGGER IF EXISTS commets_validation;
DELIMITER //

CREATE TRIGGER commets_validation BEFORE INSERT ON comments

FOR EACH ROW BEGIN
  IF !is_row_exists(NEW.target_id, NEW.target_type) THEN
    SIGNAL SQLSTATE "45000"
    SET MESSAGE_TEXT = "Error adding comment! Target table doesn't contain row id provided!";
  END IF;
END//




