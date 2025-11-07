-- Create users table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Create profiles table
CREATE TABLE profiles (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(id),
    name VARCHAR(255),
    date_of_birth DATE,
    major VARCHAR(255),
    year VARCHAR(50),
    hobby TEXT,
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Insert sample data
INSERT INTO users (email, password) VALUES 
('alice@example.com', 'password1'),
('bob@example.com', 'password2');

INSERT INTO profiles (user_id, name, date_of_birth, major, year, hobby) VALUES
(1, 'Alice', '2000-01-01', 'CS', 'Senior', 'Reading'),
(2, 'Bob', '1999-05-10', 'Math', 'Junior', 'Hiking');

-- Sample queries
SELECT * FROM users;
SELECT * FROM profiles WHERE user_id = 1;
