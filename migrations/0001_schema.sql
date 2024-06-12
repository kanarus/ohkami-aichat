-- Migration number: 0001 	 2024-06-12T08:39:45.467Z

CREATE TABLE IF NOT EXISTS chats (
    id    TEXT NOT NULL PRIMARY KEY, -- uuid v4
    title TEXT
);

CREATE TABLE IF NOT EXISTS messages (
    id      INTEGER NOT NULL PRIMARY KEY,
    chat_id TEXT    NOT NULL,
    role_id INTEGER NOT NULL, -- 0: "system", 1: "user", 2: "assistant"
    content TEXT    NOT NULL,

    FOREIGN KEY chat_id REFERENCES chats (id)
);