CREATE TABLE IF NOT EXISTS genres (
genre_id SERIAL PRIMARY KEY,
genre_name VARCHAR(255) NOT NULL);

CREATE TABLE IF NOT EXISTS artists (
artist_id SERIAL PRIMARY KEY,
artist_name VARCHAR(255) NOT NULL);

CREATE TABLE IF NOT EXISTS genre_artist (
artist_id INTEGER REFERENCES artists(artist_id) ON DELETE CASCADE,
genre_id INTEGER REFERENCES genres(genre_id) ON DELETE CASCADE,
PRIMARY KEY (genre_id, artist_id));

CREATE TABLE IF NOT EXISTS albums (
album_id SERIAL PRIMARY KEY,
albuma_name VARCHAR(255) NOT NULL,
album_year INTEGER NOT NULL CHECK(album_year>1980));

CREATE TABLE IF NOT EXISTS artist_album (
artist_id INTEGER REFERENCES artists(artist_id) ON DELETE CASCADE,
album_id INTEGER REFERENCES albums(album_id) ON DELETE CASCADE,
PRIMARY KEY (artist_id, album_id));

CREATE TABLE IF NOT EXISTS tracks (
track_id SERIAL PRIMARY KEY,
track_name VARCHAR(255) NOT NULL,
duration TIME NOT NULL CHECK(duration>'00:00:01'),
album_id INTEGER REFERENCES albums(album_id) ON DELETE CASCADE);

CREATE TABLE IF NOT EXISTS collections (
collection_id SERIAL PRIMARY KEY,
collection_name VARCHAR(255) NOT NULL,
collection_year INTEGER NOT NULL CHECK(collection_year>1980));

CREATE TABLE IF NOT EXISTS track_collection (
track_id INTEGER REFERENCES tracks(track_id) ON DELETE CASCADE,
collection_id INTEGER REFERENCES collections(collection_id) ON DELETE CASCADE,
PRIMARY KEY (track_id, collection_id));

CREATE TABLE IF NOT EXISTS departs (
depart_id SERIAL PRIMARY KEY,
depat_name VARCHAR(255) NOT NULL);

CREATE TABLE IF NOT EXISTS employees (
employee_id SERIAL PRIMARY KEY,
depart INTEGER  REFERENCES departs(depart_id) ON DELETE CASCADE,
boss INTEGER REFERENCES employees(employee_id));
