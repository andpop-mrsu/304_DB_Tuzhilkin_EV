# Task01

### Исходные файлы данных

**genres.txt** — список названий жанров фильмов, по одному на строку.

**movies.csv** — информация о фильмах.  
Колонки: movieId, title, genres.

**occupation.txt** — список названий профессий пользователей, по одной на строку.  

**ratings.csv** — оценки, выставленные пользователями фильмам.  
Колонки: userId, movieId, rating, timestamp.

**tags.csv** — теги, добавленные пользователями к фильмам.  
Колонки: userId, movieId, tag, timestamp.

**users.txt** — данные пользователей, поля разделены символом |.  
Поля: userId, name, email, gender, birthdate, occupation.

### Файлы с результатами

**ratings_count.txt** — минимальный и максимальный userId из ratings.csv и количество оценок для каждого в формате userId,количество.

**sqlite.txt** — версия установленной SQLite и доступные режимы вывода данных в sqlite3.