-- ==========================================
-- GameVault Database
-- SQL Veritabanı Uygulaması
-- ==========================================
-- İçerik:
-- - Tabloların oluşturulması
-- - Örnek verilerin eklenmesi
-- - Güncelleme ve silme işlemleri
-- - Raporlama sorguları
-- ==========================================


-- ==========================================
-- TABLO TANIMLARI
-- ==========================================

CREATE TABLE developers (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(100),
    country VARCHAR(50),
    founded_year INT
);

CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    title VARCHAR(150),
    price DECIMAL(8,2),
    release_date DATE,
    rating DECIMAL(3,1),
    developer_id INT,
    FOREIGN KEY (developer_id) REFERENCES developers(id)
);

CREATE TABLE genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    description VARCHAR(255)
);

CREATE TABLE games_genres (
    id SERIAL PRIMARY KEY,
    game_id INT,
    genre_id INT,
    FOREIGN KEY (game_id) REFERENCES games(id),
    FOREIGN KEY (genre_id) REFERENCES genres(id)
);


-- ==========================================
-- VERİ GİRİŞLERİ
-- ==========================================

INSERT INTO developers (company_name, country, founded_year) VALUES
('CD Projekt Red', 'Poland', 2002),
('Rockstar Games', 'USA', 1998),
('Bethesda', 'USA', 1986),
('Valve', 'USA', 1996),
('Ubisoft', 'France', 1986);

INSERT INTO genres (name, description) VALUES
('RPG', 'Role playing games'),
('Open World', 'Open world based games'),
('Horror', 'Horror themed games'),
('FPS', 'First person shooter games'),
('Sports', 'Sports games');

INSERT INTO games (title, price, release_date, rating, developer_id) VALUES
('The Witcher 3', 599.99, '2015-05-19', 9.5, 1),
('Cyberpunk 2077', 499.99, '2020-12-10', 7.8, 1),
('GTA V', 699.99, '2013-09-17', 9.7, 2),
('Red Dead Redemption 2', 799.99, '2018-10-26', 9.8, 2),
('Skyrim', 399.99, '2011-11-11', 9.4, 3),
('Doom Eternal', 349.99, '2020-03-20', 8.9, 3),
('Half-Life 2', 199.99, '2004-11-16', 9.6, 4),
('CS:GO', 0.00, '2012-08-21', 8.5, 4),
('Assassins Creed Valhalla', 649.99, '2020-11-10', 8.3, 5),
('Far Cry 6', 599.99, '2021-10-07', 7.9, 5);

INSERT INTO games_genres (game_id, genre_id) VALUES
(1,1),(1,2),
(2,1),(2,2),
(3,2),
(4,2),
(5,1),
(6,4),
(7,4),
(8,4),
(9,2),
(10,2);


-- ==========================================
-- GÜNCELLEME VE SİLME
-- ==========================================

UPDATE games
SET price = ROUND(price * 0.90, 2);

UPDATE games
SET rating = 9.0
WHERE title = 'Cyberpunk 2077';

DELETE FROM games_genres
WHERE game_id = (SELECT id FROM games WHERE title = 'CS:GO');

DELETE FROM games
WHERE title = 'CS:GO';


-- ==========================================
-- RAPORLAMA SORGULARI
-- ==========================================

SELECT g.title, g.price, d.company_name
FROM games g
JOIN developers d ON g.developer_id = d.id;

SELECT g.title, g.rating
FROM games g
JOIN games_genres gg ON g.id = gg.game_id
JOIN genres gr ON gg.genre_id = gr.id
WHERE gr.name = 'RPG';

SELECT title, price
FROM games
WHERE price > 500
ORDER BY price DESC;

SELECT title
FROM games
WHERE title ILIKE '%War%';
