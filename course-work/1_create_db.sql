
-- Создание базы данных

DROP DATABASE IF EXISTS project_management;
CREATE DATABASE IF NOT EXISTS project_management;

USE project_management;

-- Таблица юнитов

DROP TABLE IF exists units;
CREATE TABLE units (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(255) NOT NULL COMMENT "Имя юнита",
  `type` ENUM('company', 'team', 'project') COMMENT "тип юнита (компания, команда или проект)",
  details JSON,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Команды";

-- Таблица пользователей
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY COMMENT "Идентификатор строки", 
  first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта",
  `password` VARCHAR(100) NOT NULL COMMENT "Пароль",
  is_logged_in bool NOT NULL COMMENT "пользователь авторизован?",
  avatar bigint COMMENT "Аватар",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Пользователи";  

-- Таблица профилей
DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
  user_id SERIAL PRIMARY KEY COMMENT "Ссылка на пользователя", 
  gender ENUM('m','f') NOT NULL COMMENT "Пол",
  birthday DATE COMMENT "Дата рождения",
  division VARCHAR(130) COMMENT "Подразделение",
  `position` VARCHAR(130) COMMENT "Должность",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Профили"; 



-- Таблица связь юнитов и пользователей
DROP TABLE IF EXISTS users_units;
CREATE TABLE users_units (
  user_id bigint UNSIGNED NOT NULL COMMENT "Пользователь",
  unit_id bigint UNSIGNED NOT NULL COMMENT "Юнит",
  PRIMARY KEY (user_id, unit_id)
) COMMENT "связь пользователей и юнитов";


-- Таблица данных
-- Данные могут быть связаны со следующим элементами: комментарий, документ, событие,  задача, пользователь

DROP TABLE IF EXISTS media;
CREATE TABLE media (
  id SERIAL PRIMARY KEY COMMENT "Идентификатор строки", 
  creator_id bigint UNSIGNED COMMENT "Идентификатор пользователя",
  target_type enum('comment', 'document', 'event','post', 'todo_list', 'todo','user') NOT NULL COMMENT "тип данных",
  target_id bigint UNSIGNED NOT NULL COMMENT "Идентификатор элемента",
  media_type enum('photo', 'video', 'audio') NOT NULL COMMENT "тип данных",
  filename varchar(255) COMMENT "Ссылка на файл",
  `size` bigint UNSIGNED COMMENT "Размер файла",
  metadate json COMMENT "Метаданные"
) COMMENT "Медиа-данные";



-- Таблица постов
-- Посты это сообщения в разделе 'Message Board'. Помимо текста сообщения могут содержать прикрепленные документы, заголовок, категорию ('Announcement','FYI' и пр.)
-- Объект 'Message Board' может располагаться в компании, команде или проекте.

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id SERIAL PRIMARY KEY COMMENT "Идентификатор поста", 
  creator_id bigint UNSIGNED NOT NULL COMMENT "Автор поста",
  unit_id bigint UNSIGNED NOT NULL COMMENT "Юнит",
  category_id bigint UNSIGNED NULL COMMENT "Ссылка на категории поста",
  head VARCHAR(255) NULL COMMENT "Заголовок поста",
  body text COMMENT "Текст поста",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Посты";

-- Категории постов
DROP TABLE IF EXISTS post_categories;
CREATE TABLE post_categories (
  id serial PRIMARY KEY COMMENT "Идентификатор строки",
  name varchar(255) COMMENT "Название категории"
) COMMENT "Категории постов";


-- Таблица чатов. Чаты могут быть двух типов: unit или user.
-- Тип unit - сообщения данного чата будут отображаться в разделе Campfire конкретного юнита (Команды, Компании или проекта) для всех его учаcтников
-- Тип user - отдельный чат между двумя или несколькими пользователями

DROP TABLE IF EXISTS chats;
CREATE TABLE chats (
  id serial PRIMARY KEY COMMENT "Идентификатор строки",
  target_type ENUM('unit', 'user') COMMENT "тип чата",
  target_id bigint UNSIGNED NOT NULL COMMENT "идентификатор"
) COMMENT "таблица чатов";


-- Связь чатов и пользователей (участники чата)
DROP TABLE IF EXISTS chats_users;
CREATE TABLE chats_users (
  chat_id bigint UNSIGNED NOT NULL COMMENT "Чат",
  user_id bigint UNSIGNED NOT NULL COMMENT "Пользователь",
  PRIMARY KEY (chat_id, user_id)
) COMMENT "связь чатов и пользователей";

-- Таблица сообщений

DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
  id serial PRIMARY KEY COMMENT "Идентификатор строки",
  chat_id bigint UNSIGNED NOT NULL COMMENT "Идентификатор чата",
  creator_id bigint UNSIGNED NOT NULL COMMENT "Автор сообщения",
  body text COMMENT "текст сообщения",
  is_delivered bool COMMENT "Статус доставки",
  is_read bool COMMENT "Статус получения)",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "таблица чатов";


-- Таблица комментариев
-- Комментарии могут быть связаны с одним из следующих элементов: список задач, задача, пост, событие и документ

DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
  id serial PRIMARY KEY COMMENT "Идентификатор строки",
  target_type ENUM('todo_list','todo','post','event','doc') COMMENT "Тип элемента для комментария",
  target_id bigint UNSIGNED NOT NULL COMMENT "Идентификатор элемента",
  creator_id bigint UNSIGNED NOT NULL COMMENT "Автор сообщения",
  body text COMMENT "текс сообщения",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "таблица комментариев";


-- Таблица событий. 
-- События могу принадлежать компании, команде или проекту. 
-- Отображается в разделе 'Shedule' соответсвующего объекта

DROP TABLE IF EXISTS events;
CREATE TABLE events (
  id SERIAL PRIMARY KEY COMMENT "Идентификатор строки", 
  unit_id bigint UNSIGNED NOT NULL COMMENT "Идентификатор юнита",
  creator_id bigint UNSIGNED NOT NULL COMMENT "автор сообщения",
  name VARCHAR(255) NULL COMMENT "Название события",
  details text,
  `repeat` bool COMMENT "Нужно ли повторять событие",
  repeat_interval time NULL COMMENT "Периодичность повторения",
  repeat_until datetime NULL COMMENT "Дата окончанию для повторения",
  starts_at datetime NOT NULL COMMENT "Дата начала события",
  ends_at datetime NULL COMMENT "Дата окончания события",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "События";

-- Участники события (событие будет отражено в личных календарях указанных пользователей)
DROP TABLE IF EXISTS users_events;
CREATE TABLE users_events (
  user_id bigint UNSIGNED NOT NULL COMMENT "Пользователь",
  event_id bigint UNSIGNED NOT NULL COMMENT "Событие",
  PRIMARY KEY (user_id, event_id)
) COMMENT "связь событий и пользователей";


-- Таблица списков задач. 

DROP TABLE IF EXISTS todo_lists;
CREATE TABLE todo_lists (
  id SERIAL PRIMARY KEY COMMENT "Идентификатор строки", 
  unit_id bigint UNSIGNED NOT NULL COMMENT "Идентификатор юнита",
  creator_id bigint UNSIGNED NOT NULL COMMENT "создатель списка",
  name VARCHAR(255) NULL COMMENT "Название списка",
  details text NULL COMMENT "Детали списка задач",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Список задач";

-- Таблица задач

DROP TABLE IF EXISTS todos;
CREATE TABLE todos (
  id SERIAL PRIMARY KEY COMMENT "Идентификатор строки", 
  todo_list_id bigint UNSIGNED NOT NULL COMMENT "Идентификатор задачи",
  creator_id bigint UNSIGNED NOT NULL COMMENT "создатель задачи (может отличаться от создателя списка)",
  name VARCHAR(255) NULL COMMENT "Название события",
  details text NULL COMMENT "Детали задачи",
  starts_at datetime NOT NULL COMMENT "Дата начала события",
  ends_at datetime NULL COMMENT "Дата окончания события",
  is_done bool COMMENT "Состояние",
  notify_assignment bool COMMENT "Уведомить о назначении задачи ответственных пользователей",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "События";


-- Пользователи с назначенными задачами

DROP TABLE IF EXISTS todos_assigned_to;
CREATE TABLE todos_assigned_to (
  todo_id bigint UNSIGNED NOT NULL COMMENT "Список задач",
  user_id bigint UNSIGNED NOT NULL COMMENT "Пользователь",
  PRIMARY KEY (todo_id, user_id)
) COMMENT "Назначение задач пользователям";

-- Пользователи, которых необходимо уведомить о выполнении задачи

DROP TABLE IF EXISTS todo_notify;
CREATE TABLE todo_notify (
  todo_id bigint UNSIGNED NOT NULL COMMENT "Список задач",
  user_id bigint UNSIGNED NOT NULL COMMENT "Пользователь",
  PRIMARY KEY (todo_id, user_id)
) COMMENT "Назначение задач пользователям";


-- Таблица документов
-- Существует два типа: документ и файл
-- Документ может хранить заголовок, описание, с ним может быть связано несколько файлов.

DROP TABLE IF EXISTS documents;
CREATE TABLE documents (
  id SERIAL PRIMARY KEY COMMENT "Идентификатор поста", 
  creator_id bigint UNSIGNED NOT NULL COMMENT "Автор поста",
  unit_id bigint UNSIGNED NOT NULL COMMENT "Юнит",
  `type` ENUM('document', 'file') COMMENT "",
  head VARCHAR(255) NULL COMMENT "Заголовок документа",
  body text NULL COMMENT "Текст",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Посты";

