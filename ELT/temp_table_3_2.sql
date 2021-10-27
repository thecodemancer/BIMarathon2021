INSERT INTO temp_table_3(
    id_track
    ,name
    ,popularity
    ,duration_min
    ,explicit
    ,artists
    ,id_artists
    ,release_date
    ,release_year
    ,calculated_release_year
    ,danceability
    ,energy
    ,_key
    ,loudness
    ,mode
    ,speechiness
    ,acousticness
    ,instrumentalness
    ,liveness
    ,valence
    ,tempo
    ,time_signature

    ,artist_id
    ,artist_name
    ,artist_followers
    ,artist_genres
    ,artist_popularity
)
SELECT 
    id_track
    ,name
    ,popularity
    ,duration_min
    ,explicit
    ,artists
    ,id_artists
    ,release_date
    ,release_year
    ,CASE 
		WHEN CHAR_LENGTH( SUBSTRING_INDEX(REPLACE(release_date,'-','/'),'/',1)) < 4 THEN SUBSTR(REPLACE(release_date,'-','/'),'-4',4) 
		ELSE SUBSTR(REPLACE(release_date,'-','/'),'1',4)
	  END AS calculated_release_year
    ,danceability
    ,energy
    ,_key
    ,loudness
    ,mode
    ,speechiness
    ,acousticness
    ,instrumentalness
    ,liveness
    ,valence
    ,tempo
    ,time_signature

    ,artist_id_2 AS artist_id
    ,artist_2 AS artist_name
    ,artist_id_2_followers AS artist_followers
    ,artist_id_2_genres AS artist_genres
    ,artist_id_2_popularity AS artist_popularity
FROM temp_table_2    
WHERE artist_id_2 IS NOT NULL
LIMIT 0,50000