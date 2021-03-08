USE shop;


-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
    
SELECT u.id, u.name, count(o.id) as 'number of orders'
  FROM users u
   JOIN orders o
     ON u.id = o.user_id
GROUP BY u.id;


-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT p.id, p.name, c.name 'type'
  FROM products p 
  LEFT JOIN catalogs c 
    ON p.catalog_id = c.id ;


-- 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
--    Поля from, to и label содержат английские названия городов, поле name — русское. 
--    Выведите список рейсов flights с русскими названиями городов.

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  `from` VARCHAR(255),
  `to` VARCHAR(255));
  
INSERT INTO `flights` (`from`, `to`) VALUES ('moscow', 'omsk');
INSERT INTO `flights` (`from`, `to`) VALUES ('novgorod', 'kazan');
INSERT INTO `flights` (`from`, `to`) VALUES ('irkutsk', 'moscow');
INSERT INTO `flights` (`from`, `to`) VALUES ('omsk', 'irkutsk');
INSERT INTO `flights` (`from`, `to`) VALUES ('moscow', 'kazan');
INSERT INTO `flights` (`from`, `to`) VALUES ('moscow', 's-petersburg');
INSERT INTO `flights` (`from`, `to`) VALUES ('s-petersburg', 'omsk');

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  `label` VARCHAR(255),
  `name` VARCHAR(255));

INSERT INTO `cities` (`label`, `name`) VALUES ('moscow', 'Москва');
INSERT INTO `cities` (`label`, `name`) VALUES ('irkutsk', 'Иркутск');
INSERT INTO `cities` (`label`, `name`) VALUES ('novgorod', 'Новгород');
INSERT INTO `cities` (`label`, `name`) VALUES ('kazan', 'Казань');
INSERT INTO `cities` (`label`, `name`) VALUES ('omsk', 'Омск');
 
SELECT 
  f.id, 
  IFNULL(c_from.name, f.from) 'from',
  IFNULL(c_to.name, f.to) 'to'
FROM flights f 
LEFT JOIN cities c_from ON f.from = c_from.label
LEFT JOIN cities c_to ON f.to = c_to.label
ORDER BY id;
