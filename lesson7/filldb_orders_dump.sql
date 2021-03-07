#
# TABLE STRUCTURE FOR: orders
#
USE shop;
DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `index_of_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Заказы';

INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('1', 4, '2021-03-02 19:43:46', '2021-03-06 10:08:58');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('2', 4, '2021-02-25 14:01:48', '2021-03-05 11:45:02');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('3', 5, '2021-02-20 14:00:11', '2021-03-03 16:14:41');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('4', 3, '2021-02-20 17:43:07', '2021-03-01 03:22:44');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('5', 4, '2021-02-09 04:38:16', '2021-02-15 10:01:48');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('6', 4, '2021-02-16 01:32:46', '2021-03-02 21:33:26');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('7', 1, '2021-02-13 07:53:05', '2021-03-04 22:12:23');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('8', 5, '2021-03-07 18:40:28', '2021-02-25 17:10:22');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('9', 1, '2021-02-20 08:45:25', '2021-02-23 08:39:35');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('10', 2, '2021-02-20 07:36:18', '2021-02-27 05:59:36');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('11', 1, '2021-02-21 18:54:35', '2021-02-24 02:58:12');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('12', 2, '2021-02-23 19:34:00', '2021-02-19 15:42:45');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('13', 3, '2021-02-20 10:29:30', '2021-03-07 05:44:08');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('14', 5, '2021-02-18 10:19:57', '2021-03-01 14:12:06');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('15', 5, '2021-02-15 12:01:41', '2021-03-06 04:36:46');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('16', 1, '2021-02-13 05:04:22', '2021-03-06 21:44:06');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('17', 4, '2021-02-24 19:06:05', '2021-02-12 06:52:53');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('18', 1, '2021-02-16 13:40:41', '2021-02-08 12:39:01');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('19', 5, '2021-02-19 21:58:47', '2021-02-10 17:47:29');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('20', 5, '2021-02-09 14:23:51', '2021-02-08 10:08:53');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('21', 3, '2021-02-25 22:21:09', '2021-03-03 16:25:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('22', 4, '2021-03-02 02:09:54', '2021-03-03 05:40:39');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('23', 4, '2021-03-04 01:16:22', '2021-03-05 02:45:00');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('24', 5, '2021-02-14 03:14:06', '2021-02-27 01:28:00');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('25', 3, '2021-03-01 08:53:42', '2021-02-25 04:18:45');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('26', 5, '2021-02-27 05:54:56', '2021-02-13 17:26:51');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('27', 1, '2021-02-08 08:47:00', '2021-02-28 17:39:21');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('28', 4, '2021-02-24 23:40:16', '2021-02-19 10:31:01');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('29', 1, '2021-03-02 15:34:00', '2021-02-15 09:48:02');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES ('30', 1, '2021-02-15 13:18:19', '2021-02-25 14:20:09');


#
# TABLE STRUCTURE FOR: orders_products
#

DROP TABLE IF EXISTS `orders_products`;

CREATE TABLE `orders_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `total` int(10) unsigned DEFAULT 1 COMMENT 'Количество заказанных товарных позиций',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Состав заказа';

INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('1', 23, 2, 4, '2021-02-25 06:06:45', '2021-03-01 03:24:33');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('2', 21, 6, 7, '2021-03-05 12:48:17', '2021-03-06 22:02:12');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('3', 6, 7, 8, '2021-03-06 13:52:26', '2021-02-13 07:47:24');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('4', 16, 4, 8, '2021-02-23 23:44:01', '2021-02-21 08:12:43');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('5', 17, 3, 3, '2021-02-10 00:58:57', '2021-03-07 05:11:20');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('6', 24, 6, 9, '2021-02-08 12:35:33', '2021-02-13 20:18:22');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('7', 14, 6, 3, '2021-03-04 05:54:51', '2021-02-19 17:32:29');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('8', 11, 1, 8, '2021-02-24 13:49:03', '2021-02-14 01:05:06');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('9', 26, 4, 6, '2021-02-09 22:08:39', '2021-02-16 09:40:52');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('10', 10, 3, 9, '2021-02-09 11:07:30', '2021-02-23 23:49:11');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('11', 6, 3, 1, '2021-02-09 18:19:04', '2021-03-01 11:15:23');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('12', 14, 4, 7, '2021-02-11 08:54:18', '2021-02-07 21:22:09');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('13', 2, 2, 10, '2021-02-21 14:55:56', '2021-02-22 19:17:12');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('14', 2, 6, 7, '2021-02-24 22:27:45', '2021-02-20 13:40:09');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('15', 6, 2, 8, '2021-02-15 13:40:47', '2021-03-05 17:22:34');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('16', 27, 2, 2, '2021-02-18 12:02:17', '2021-02-25 02:55:57');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('17', 22, 7, 3, '2021-02-28 01:21:34', '2021-02-24 19:00:07');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('18', 12, 1, 6, '2021-02-23 02:23:35', '2021-03-06 05:46:02');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('19', 23, 1, 4, '2021-02-08 05:47:22', '2021-02-25 12:24:05');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('20', 1, 4, 9, '2021-02-27 14:42:07', '2021-03-06 02:52:03');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('21', 14, 1, 2, '2021-02-18 09:23:46', '2021-03-07 10:11:06');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('22', 30, 3, 9, '2021-02-26 04:42:52', '2021-02-20 20:31:24');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('23', 10, 3, 3, '2021-02-08 15:22:25', '2021-02-16 07:07:21');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('24', 18, 4, 8, '2021-03-03 19:06:33', '2021-02-13 10:16:51');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('25', 5, 6, 2, '2021-02-25 01:15:41', '2021-03-03 04:20:45');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('26', 9, 1, 6, '2021-02-10 10:02:49', '2021-02-28 17:52:15');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('27', 9, 7, 7, '2021-02-28 22:29:36', '2021-02-18 02:33:07');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('28', 18, 7, 9, '2021-02-12 22:51:29', '2021-02-11 04:43:26');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('29', 17, 4, 4, '2021-03-05 16:00:01', '2021-03-05 19:56:08');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('30', 26, 1, 4, '2021-03-06 20:26:29', '2021-02-08 04:48:21');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('31', 2, 1, 10, '2021-02-16 08:33:42', '2021-02-08 07:55:21');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('32', 17, 5, 1, '2021-02-10 00:46:44', '2021-02-21 04:26:47');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('33', 21, 4, 3, '2021-02-19 23:05:35', '2021-02-13 02:01:11');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('34', 12, 1, 3, '2021-02-25 14:49:41', '2021-02-24 09:06:21');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('35', 9, 6, 10, '2021-02-27 23:57:39', '2021-02-23 04:35:30');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('36', 14, 3, 1, '2021-02-19 06:29:00', '2021-02-28 17:41:44');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('37', 13, 1, 3, '2021-02-19 11:23:58', '2021-03-03 06:54:39');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('38', 28, 1, 7, '2021-02-21 07:53:36', '2021-02-21 02:09:53');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('39', 4, 2, 10, '2021-02-11 20:22:18', '2021-02-12 06:12:14');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('40', 25, 5, 7, '2021-03-04 10:50:50', '2021-02-21 07:26:30');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('41', 3, 4, 10, '2021-02-16 07:59:38', '2021-03-05 07:24:17');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('42', 4, 6, 4, '2021-02-14 22:42:04', '2021-02-09 05:04:31');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('43', 27, 2, 6, '2021-03-04 21:13:13', '2021-03-04 20:25:32');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('44', 20, 1, 2, '2021-02-11 13:41:30', '2021-03-01 21:04:12');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('45', 22, 2, 7, '2021-02-14 23:28:44', '2021-02-19 21:37:00');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('46', 27, 3, 7, '2021-03-01 04:13:42', '2021-03-05 05:34:02');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('47', 19, 7, 3, '2021-02-11 05:36:47', '2021-02-16 19:56:06');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('48', 26, 2, 4, '2021-02-11 07:40:02', '2021-02-09 13:57:05');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('49', 27, 4, 10, '2021-02-19 19:10:00', '2021-02-15 14:28:36');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES ('50', 15, 2, 3, '2021-02-26 23:50:01', '2021-02-26 20:56:59');


