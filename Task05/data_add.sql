-- 1. Добавление 5 новых пользователей (я + 4 соседа по списку)
INSERT INTO users (first_name, last_name, email, gender, occupation_id) VALUES 
('Dasha', 'Fedorova', 'dasha291205fedorova@gmail.com', 'female', (SELECT id FROM occupations WHERE name = 'student')),
('Ilya', 'Ariskin', 'arisili@ya.ru', 'male', (SELECT id FROM occupations WHERE name = 'student')),
('Anastasia', 'Bajol', 'anastasiabajol@gmail.com', 'female', (SELECT id FROM occupations WHERE name = 'student')),
('Maxim', 'Bashmakov', 'maximbashmakov@gmail.com', 'male', (SELECT id FROM occupations WHERE name = 'student')),
('Ilya', 'Berman', 'ilyaberman@gmail.com', 'male', (SELECT id FROM occupations WHERE name = 'student'));

-- 2. Добавление 3 новых фильмов разных жанров
INSERT OR IGNORE INTO movies (title, year) VALUES 
('Drive', 2011),
('Intouchables', 2011),
('Interstellar', 2014);

-- Связываем фильмы с жанрами 
INSERT OR IGNORE INTO movie_genres (movie_id, genre_id) VALUES 
((SELECT id FROM movies WHERE title = 'Drive'), (SELECT id FROM genres WHERE name = 'Thriller')),
((SELECT id FROM movies WHERE title = 'Intouchables'), (SELECT id FROM genres WHERE name = 'Comedy')),
((SELECT id FROM movies WHERE title = 'Interstellar'), (SELECT id FROM genres WHERE name = 'Sci-Fi'));

-- 3. Добавление 3 новых отзывов от меня (Dasha Fedorova)
INSERT INTO ratings (user_id, movie_id, rating) VALUES 
((SELECT id FROM users WHERE email = 'dasha291205fedorova@gmail.com'), (SELECT id FROM movies WHERE title = 'Drive'), 4.0),
((SELECT id FROM users WHERE email = 'dasha291205fedorova@gmail.com'), (SELECT id FROM movies WHERE title = 'Intouchables'), 4.5),
((SELECT id FROM users WHERE email = 'dasha291205fedorova@gmail.com'), (SELECT id FROM movies WHERE title = 'Interstellar'), 5.0);