CREATE DATABASE IF NOT EXISTS app_db;
USE app_db;

-- TODO Table
CREATE TABLE IF NOT EXISTS todos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    task VARCHAR(255) NOT NULL,
    completed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Blog Table
CREATE TABLE IF NOT EXISTS blogs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    published_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO todos (task) VALUES ('Learn Docker'), ('Learn Docker Compose');
INSERT INTO blogs (title, content) VALUES ('First Blog', 'This is my first blog post'), ('Second Blog', 'This is my second blog post'), ('Third Blog', 'This is my third blog post');

