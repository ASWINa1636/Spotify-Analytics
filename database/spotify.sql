select DISTINCT(count(album_name)) from SpotifyTracks;

-- top genres
select track_genre, avg(popularity) as AvgPopularity from SpotifyTracks
group by track_genre order by AvgPopularity desc;

-- top artists
SELECT artists, avg(popularity) as AvgPopularity from SpotifyTracks
group by artists order by AvgPopularity desc;

-- most common genre
select track_genre, count(*) as TotalSongs from SpotifyTracks
group by track_genre order by TotalSongs desc;

-- explicit songs
SELECT explicit, avg(popularity) from SpotifyTracks
group by explicit;

-- which genres have the most explicit songs
select track_genre, count(*) as explicit_song_count from SpotifyTracks
where explicit = 'True'
group by track_genre order by explicit_song_count desc;

-- most danceability song
select track_name, danceability from SpotifyTracks
order by danceability desc limit 20;

-- energy vs popularity
select energy, popularity from SpotifyTracks;

-- top albums
select album_name, avg(popularity) AvgPopularity from SpotifyTracks
group by album_name order by AvgPopularity desc;

-- average tempo
SELECT avg(tempo) from SpotifyTracks;

-- longest songs
select track_name, duration_ms from SpotifyTracks
order by duration_ms desc limit 20;

-- top songs
select album_name, popularity from SpotifyTracks
order by popularity desc limit 20;

select * from SpotifyTracks
where track_name = 'I''m Good (Blue)';

-- check duplicate
select track_id, count(*) as duplicate_count from SpotifyTracks
group by track_id having count(*) > 1;