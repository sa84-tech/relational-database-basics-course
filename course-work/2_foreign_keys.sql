-- Внешние ключи

-- Таблица профилей
ALTER TABLE profiles
ADD CONSTRAINT profiles_user_id_fk
FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE CASCADE;

-- Таблица связь юнитов и пользователей
ALTER TABLE users_units
ADD CONSTRAINT users_units_user_id_fk
FOREIGN KEY (user_id)
REFERENCES users (id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE users_units
ADD CONSTRAINT users_units_unit_id_fk
FOREIGN KEY (unit_id)
REFERENCES units (id)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- Таблица медиа-данных

ALTER TABLE media
ADD CONSTRAINT media_creator_id_fk
FOREIGN KEY (creator_id)
REFERENCES users (id)
ON DELETE SET NULL;


-- Таблица постов

ALTER TABLE posts
ADD CONSTRAINT posts_unit_id_fk
FOREIGN KEY (unit_id)
REFERENCES units (id)
ON DELETE CASCADE;

ALTER TABLE posts
ADD CONSTRAINT posts_creator_id_fk
FOREIGN KEY (creator_id)
REFERENCES users (id)
ON DELETE CASCADE;

ALTER TABLE posts
ADD CONSTRAINT posts_category_id_fk
FOREIGN KEY (category_id)
REFERENCES post_categories (id)
ON DELETE SET NULL;

-- Связь чатов и пользователей
ALTER TABLE chats_users
ADD CONSTRAINT chats_users_chat_id_fk
FOREIGN KEY (chat_id)
REFERENCES chats (id)
ON DELETE CASCADE;

ALTER TABLE chats_users
ADD CONSTRAINT chats_users_user_id_fk
FOREIGN KEY (user_id)
REFERENCES users (id)
ON DELETE CASCADE;

-- Сообщения

ALTER TABLE messages
ADD CONSTRAINT messages_chat_id_fk
FOREIGN KEY (chat_id)
REFERENCES chats (id)
ON DELETE CASCADE;

ALTER TABLE messages
ADD CONSTRAINT messages_creator_id_fk
FOREIGN KEY (creator_id)
REFERENCES users (id)
ON DELETE CASCADE;

-- Таблица комментариев

ALTER TABLE comments 
ADD CONSTRAINT comments_creator_id_fk
FOREIGN KEY (creator_id)
REFERENCES users(id)
ON DELETE CASCADE;


-- Таблица событий

ALTER TABLE events
ADD CONSTRAINT events_unit_id_fk
FOREIGN KEY (unit_id)
REFERENCES units (id)
ON DELETE CASCADE;

ALTER TABLE events
ADD CONSTRAINT events_creator_id_fk
FOREIGN KEY (creator_id)
REFERENCES users (id)
ON DELETE CASCADE;

-- Участники событий

ALTER TABLE users_events
ADD CONSTRAINT users_events_user_id_fk
FOREIGN KEY (user_id)
REFERENCES users (id)
ON DELETE CASCADE;

ALTER TABLE users_events
ADD CONSTRAINT users_events_event_id_fk
FOREIGN KEY (event_id)
REFERENCES events (id)
ON DELETE CASCADE;


-- Таблица списков задач

ALTER TABLE todo_lists
ADD CONSTRAINT todo_lists_unit_id_fk
FOREIGN KEY (unit_id)
REFERENCES units (id)
ON DELETE CASCADE;

ALTER TABLE todo_lists
ADD CONSTRAINT todo_lists_creator_id_fk
FOREIGN KEY (creator_id)
REFERENCES users (id)
ON DELETE CASCADE;


-- Таблица задач

ALTER TABLE todos
ADD CONSTRAINT todos_todo_list_id_fk
FOREIGN KEY (todo_list_id)
REFERENCES todo_lists (id)
ON DELETE CASCADE;

ALTER TABLE todos
ADD CONSTRAINT todos_creator_id_fk
FOREIGN KEY (creator_id)
REFERENCES users (id)
ON DELETE CASCADE;

-- Таблица пользователей, которым назначена задача

ALTER TABLE todos_assigned_to
ADD CONSTRAINT todos_assigned_to_todo_id_fk
FOREIGN KEY (todo_id)
REFERENCES todos (id)
ON DELETE CASCADE;

ALTER TABLE todos_assigned_to
ADD CONSTRAINT todos_assigned_to_user_id_fk
FOREIGN KEY (user_id)
REFERENCES users (id)
ON DELETE CASCADE;

-- Таблица пользователей, которых необходимо уведомить об окончании задачи

ALTER TABLE todo_notify
ADD CONSTRAINT todo_notify_todo_id_fk
FOREIGN KEY (todo_id)
REFERENCES todos (id)
ON DELETE CASCADE;

ALTER TABLE todo_notify
ADD CONSTRAINT todo_notify_user_id_fk
FOREIGN KEY (user_id)
REFERENCES users (id)
ON DELETE CASCADE;

-- Таблица документов

ALTER TABLE documents
ADD CONSTRAINT documents_creator_id_fk
FOREIGN KEY (creator_id)
REFERENCES users (id)
ON DELETE CASCADE;

ALTER TABLE documents
ADD CONSTRAINT documents_unit_id_fk
FOREIGN KEY (unit_id)
REFERENCES units (id)
ON DELETE CASCADE;

