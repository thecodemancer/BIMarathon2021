INSERT INTO D_KEY (key_id, key_description)
SELECT DISTINCT 
	IFNULL(_key, -1)
	, CAST(IFNULL(_key, '-1') AS CHAR )
FROM temp_table_5;

INSERT INTO D_KEY (key_id, key_description)
SELECT DISTINCT 
	IFNULL(_key, -1)
	, CAST(IFNULL(_key, '-1') AS CHAR )
FROM temp_table_5;

INSERT INTO D_EXPLICIT (explicit_id, explicit_description)
SELECT DISTINCT 
	IFNULL(explicit, -1)
	, CAST(IFNULL(explicit, '-1') AS CHAR )
FROM temp_table_5;


INSERT INTO D_MODE (mode_id, mode_description)
SELECT DISTINCT 
	IFNULL(mode, -1)
	, CAST(IFNULL(mode, '-1') AS CHAR )
FROM temp_table_5;

INSERT INTO D_POPULARITY (popularity_type, popularity_score)
SELECT 
	popularity_type
	, popularity_score
FROM 
(
	SELECT DISTINCT
		1 AS popularity_type	#song
		, CAST(IFNULL(popularity, '-1') AS CHAR ) popularity_score
	FROM temp_table_5

	UNION ALL

	SELECT DISTINCT
		2 AS popularity_type	#artist
		, CAST(IFNULL(artist_popularity, '-1') AS CHAR ) popularity_score
	FROM temp_table_5
) BASE
ORDER BY popularity_type, popularity_score;




INSERT INTO D_ARTIST (original_artist_id, artist_name, artist_followers)
SELECT DISTINCT 
	artist_id
	,IFNULL(artist_name, '-1')
	, IFNULL(artist_followers, -1) 
FROM temp_table_5;


INSERT INTO D_GENRE (genre_description)
SELECT DISTINCT 
	CAST(IFNULL(artist_genre, '-1') AS CHAR )
FROM temp_table_5;

INSERT INTO D_TIME_SIGNATURE (time_signature_id, time_signature_description)
SELECT DISTINCT 
	IFNULL(time_signature, -1)
	, CAST(IFNULL(time_signature, '-1') AS CHAR )
FROM temp_table_5;

INSERT INTO D_YEAR(year_description)
SELECT DISTINCT
	calculated_release_year
FROM temp_table_5
ORDER BY calculated_release_year;
	

INSERT INTO D_SONG(    
	id_track
    ,song_name
    ,song_duration
    ,song_release_date
    ,song_release_year
    ,song_calculated_release_year
    ,song_danceability
    ,song_energy
    ,song_loudness
    ,song_speechiness
    ,song_acousticness
    ,song_instrumentalness
    ,song_liveness
    ,song_valence
    ,song_tempo
    )
SELECT DISTINCT
    id_track
    ,IFNULL(name, '-1')
    ,IFNULL(duration_min, -1)
    ,IFNULL(release_date, '-1')
    ,IFNULL(release_year, '-1')
    ,IFNULL(calculated_release_year, -1)
    ,IFNULL(danceability, -1)
    ,IFNULL(energy, -1)
    ,IFNULL(loudness, -1)
    ,IFNULL(speechiness, -1)
    ,IFNULL(acousticness, -1)
    ,IFNULL(instrumentalness, -1)
    ,IFNULL(liveness, -1)
    ,IFNULL(valence, -1)
    ,IFNULL(tempo, -1)
FROM temp_table_5;

INSERT INTO F_SPOTIFY(
	#fact_id
	song_id
	,key_id
	,explicit_id
	,mode_id
	,time_signature_id
	,artist_id
	,song_popularity_id
	,artist_popularity_id
	,artist_genre_id
	,year_id
)
SELECT
	#fact_id
	SONG.song_id AS song_id
	,IFNULL(_KEY.key_id,-1) AS key_id
	,IFNULL(EXPL.explicit_id,-1) AS explicit_id
	,IFNULL(MODE.mode_id,-1) AS mode_id
	,IFNULL(TISI.time_signature_id,-1) AS time_signature_id
	,IFNULL(ARTI.artist_id,-1) AS artist_id
	,IFNULL(POP1.popularity_id,-1) AS song_popularity_id
	,IFNULL(POP2.popularity_id,-1) AS artist_popularity_id
	,IFNULL(GENR.genre_id,-1)  AS artist_genre_id
	,IFNULL(YEAR.year_id,-1)  AS year_id

FROM temp_table_5 BASE
LEFT JOIN D_SONG SONG
	ON BASE.id_track = SONG.id_track
LEFT JOIN D_KEY _KEY
	ON BASE._key = _KEY.key_id
LEFT JOIN D_EXPLICIT EXPL
	ON BASE.explicit = EXPL.explicit_id
LEFT JOIN D_MODE MODE
	ON BASE.mode = MODE.mode_id
LEFT JOIN D_ARTIST ARTI
	ON BASE.artist_id = ARTI.original_artist_id	
LEFT JOIN D_POPULARITY POP1
	ON BASE.popularity = POP1.popularity_id 
	AND POP1.popularity_type = 1	#song
LEFT JOIN D_POPULARITY POP2
	ON BASE.artist_popularity = POP2.popularity_id 
	AND POP2.popularity_type = 2	#artist
LEFT JOIN D_GENRE GENR
	ON BASE.artist_genre = GENR.genre_description
LEFT JOIN D_TIME_SIGNATURE TISI
	ON BASE.time_signature = TISI.time_signature_id
LEFT JOIN D_YEAR YEAR
	ON BASE.calculated_release_year = YEAR.year_description;
