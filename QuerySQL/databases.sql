CREATE DATABASE konsul_gizi;
USE konsul_gizi;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE chat_history (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    message TEXT,
    response TEXT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- SELECT * FROM 

-- DROP TABLE chat_history;

-- CREATE TABLE chat_history (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     user_id INT,
--     question TEXT,
--     response TEXT,
--     TIMESTAMP TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     FOREIGN KEY (user_id) REFERENCES users(id)
-- );


-- CREATE TABLE chat_history (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     user_input TEXT,
--     bot_response TEXT,
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );


