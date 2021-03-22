
-- Практическое задание по теме "Оптимизация запросов"


USE shop;

-- 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, 
-- catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, 
-- идентификатор первичного ключа и содержимое поля name.


DROP TABLE IF EXISTS logs;
CREATE TABLE IF NOT EXISTS logs (
  `id` SERIAL,
  `table_name` VARCHAR(255) NOT NULL COMMENT 'Название таблицы',
  `pk_id` INT UNSIGNED NOT NULL COMMENT 'Идентификатор первичного ключа',
  `name` VARCHAR(255) NOT NULL COMMENT 'содержимое поля name',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания записи'
) ENGINE=Archive COMMENT = 'Логи' ;


DELIMITER //

DROP TRIGGER IF EXISTS log_products_insert//

CREATE TRIGGER log_products_insert AFTER INSERT ON products
FOR EACH ROW BEGIN
  INSERT INTO logs (table_name, pk_id, name)
  VALUES ('products', NEW.id, NEW.name);
END//

DROP TRIGGER IF EXISTS log_catalogs_insert//

CREATE TRIGGER log_catalogs_insert AFTER INSERT ON catalogs
FOR EACH ROW BEGIN
  INSERT INTO logs (table_name, pk_id, name)
  VALUES ('catalogs', NEW.id, NEW.name);
END//

DELIMITER ;


INSERT INTO products (name, description, price, catalog_id)
VALUES ('MSI B250M GAMING EXTREME', 'Материнская плата MSI B250M GAMING EXTREME, B250, Socket 1151, DDR4, ATX', 10250, 2);

INSERT INTO catalogs (name)
VALUES ('Блоки питания');

INSERT INTO catalogs (name)
VALUES ('Охлаждение');


SELECT * from logs;









