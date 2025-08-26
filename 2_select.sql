SELECT track_name, duration FROM tracks
ORDER BY duration DESC
LIMIT 1;

SELECT track_name FROM tracks
WHERE duration >= '00:03:30';

SELECT collection_name  FROM collections
WHERE collection_year BETWEEN 2018 AND 2020;

SELECT artist_name FROM artists
WHERE artist_name NOT LIKE ('% %');

SELECT track_name FROM tracks
WHERE LOWER(track_name) ~* '\y(мой|my)\y';