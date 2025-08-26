SELECT a.albuma_name FROM albums a
JOIN artist_album aa ON aa.album_id = a.album_id
JOIN genre_artist ga ON ga.artist_id = aa.artist_id 
GROUP BY a.albuma_name, ga.artist_id
HAVING count(ga.artist_id) > 1;

SELECT t.track_name FROM tracks t
LEFT JOIN track_collection tc ON tc.track_id = t.track_id
WHERE tc.collection_id IS NULL;

SELECT a.artist_name FROM artists a
JOIN artist_album aa ON a.artist_id = aa.artist_id
JOIN tracks t ON aa.album_id = t.album_id
WHERE t.duration = (SELECT MIN(duration) FROM tracks);

SELECT a.albuma_name, count(*) FROM tracks t 
JOIN albums a ON a.album_id = t.album_id
GROUP BY a.albuma_name
HAVING count(*) = (SELECT count(*) FROM tracks  GROUP BY album_id ORDER BY count(*) LIMIT 1);