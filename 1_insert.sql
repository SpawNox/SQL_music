INSERT INTO artists (artist_name)
VALUES
('Electric Pulse'),
('The Rolling Stones Cover Band'),
('Luna Shadow'),
('Медная Гора'),
('MC Reality'),
('Cosmic Drifters'),
('Jazz Noir Collective'),
('Thunderbolt');

INSERT INTO genres (genre_name)
VALUES
('Pop'),
('Rock'),
('Hip-Hop'),
('Electronic'),
('Jazz'),
('Metal');

INSERT INTO albums (albuma_name, album_year)
VALUES 
('Neon Dreams', 2022),
('Ветер с Урала', 2020),
('Gravity Waves', 2021),
('Street Poetry', 2019),
('Midroom Sessions', 2018),
('Apocalypse Now', 2023);

INSERT INTO tracks (track_name, duration, album_id)
VALUES 
('Synthetic Love', '00:03:18', 1),
('Midnight Drive', '00:03:44', 1),
('Хозяин Медной горы', '00:03:03', 2),
('Каменный цветок', '00:04:10', 2),
('Nebula', '00:06:02', 3),
('Event Horizon', '00:05:11', 3),
('Бит за бит', '00:02:37', 4),
('Мой район', '00:03:31', 4),
('Blue Whiskey', '00:04:45', 5),
('Rainy Sunday', '00:04:34', 5),
('Ride the Lightning', '00:05:11', 6),
('Final War', '00:04:38', 6);

INSERT INTO collections (collection_name, collection_year)
VALUES 
('Best of 2020', 2021),
('Summer Hits', 2022),
('Indie Spirit', 2019),
('Rock Legends', 2018),
('Hip-Hop Essentials', 2020),
('Chillout Lounge', 2021),
('Metal Evolution', 2023),
('Road Trip Mix', 2022);

INSERT INTO genre_artist  (artist_id, genre_id) 
VALUES
(1, 1), (1, 4),
(2, 2),
(3, 1),
(4, 2),
(5, 3),
(6, 4),
(7, 5),
(8, 6);

INSERT INTO artist_album (artist_id, album_id) 
VALUES
(1, 1),
(4, 2),
(6, 3),
(5, 4),
(7, 5),
(8, 6);

INSERT INTO track_collection (collection_id, track_id) 
VALUES
(1, 3), (1, 4),
(2, 1), (2, 2),
(3, 1), (3, 2),
(4, 3), (4, 4),
(5, 7), (5, 8),
(6, 5), (6, 6),
(7, 11), (7, 12),
(8, 1), (8, 3), (8, 5);
