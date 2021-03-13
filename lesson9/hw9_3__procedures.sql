
-- Практическое задание по теме "Хранимые процедуры и функции, триггеры"


-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
-- с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

SELECT CURTIME();

USE shop;

DROP FUNCTION IF EXISTS hello;

DELIMITER //

CREATE FUNCTION hello()
RETURNS TEXT DETERMINISTIC
BEGIN
	RETURN CASE
		WHEN CURTIME() >= '06:00' AND CURTIME() < '12:00' THEN 'Доброе утро'
		WHEN CURTIME() >= '12:00' AND CURTIME() < '18:00' THEN 'Добрый день'
		WHEN CURTIME() >= '18:00' AND CURTIME() < '00:00' THEN 'Добрый вечер'
		ELSE 'Доброй ночи'
	END;
END //

DELIMITER ;

SELECT hello();


-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. 
-- Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.

USE shop;

SELECT * FROM products;

DELIMITER //

DROP TRIGGER IF EXISTS check_products_name_description_instert//

CREATE TRIGGER check_products_name_description_instert BEFORE INSERT ON products
FOR EACH ROW BEGIN
  IF ISNULL(NEW.name) AND ISNULL(NEW.description) THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Поле name и поле description не могут быть NULL одновременно';
  END IF;
END//

DROP TRIGGER IF EXISTS check_name_description_update //

CREATE TRIGGER check_name_description_update BEFORE UPDATE ON products
FOR EACH ROW BEGIN
  IF ISNULL(NEW.name) AND ISNULL(NEW.description) THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Поле name и поле description не могут быть NULL одновременно';
  END IF;
END//

DELIMITER ;

INSERT INTO products (name, description, price, catalog_id)
VALUES (NULL, NULL, 100, 1);
  
UPDATE products SET name = NULL WHERE id = 1;
UPDATE products SET description = NULL WHERE id = 1;


