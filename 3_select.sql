SELECT g.genre_name "Жанр" , count(*) "Кол-во исполнителей" FROM genre_artist ga
JOIN genres g ON g.genre_id = ga.genre_id 
GROUP BY g.genre_name;

SELECT count(*) "Кол-во треков" FROM tracks t
JOIN albums a ON a.album_id = t.album_id
WHERE a.album_year BETWEEN 2019 AND 2020;

SELECT a.albuma_name "Альбом", AVG(t.duration) "Средняя продолжительность трека" FROM tracks t
JOIN albums a ON a.album_id = t.album_id 
GROUP BY a.albuma_name;

SELECT a.artist_name FROM artists a
WHERE a.artist_name NOT IN (
SELECT a.artist_name  FROM artists a
JOIN artist_album aa ON aa.artist_id = a.artist_id
JOIN albums al ON al.album_id = aa.album_id
WHERE al.album_year = 2020
);

SELECT c.collection_name "Сборник" FROM track_collection tc 
JOIN collections c ON c.collection_id = tc.collection_id
JOIN tracks t ON t.track_id =tc.track_id
JOIN albums a ON a.album_id = t.album_id 
JOIN artist_album aa ON aa.album_id = a.album_id 
JOIN artists ar ON ar.artist_id = aa.artist_id 
WHERE ar.artist_name = 'Медная Гора'
GROUP BY c.collection_name;