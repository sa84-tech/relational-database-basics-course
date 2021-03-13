
-- Практическое задание по теме "Транзакции, переменные, представления"


-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

CREATE DATABASE IF NOT EXISTS sample;

USE sample;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  birthday_at DATE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'пользователи';

TRUNCATE sample.users;

START TRANSACTION;

INSERT INTO sample.users 
  SELECT * FROM shop.users u WHERE u.id = 1;

DELETE FROM shop.users WHERE id = 1;

COMMIT;


SELECT * from sample.users;
SELECT * FROM shop.users;


-- 2. Создайте представление, которое выводит название name товарной позиции из таблицы products 
-- и соответствующее название каталога name из таблицы catalogs.

USE shop;

CREATE OR REPLACE VIEW goods AS 
  SELECT p.name product_name, c.name catalog_name FROM products p
  LEFT JOIN catalogs c
  ON p.catalog_id = c.id
  ORDER BY p.name ;
 
SHOW TABLES;
 
SELECT * FROM goods;



