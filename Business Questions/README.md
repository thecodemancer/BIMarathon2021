# Business Questions

## What is the least popular song?

WITH MIN_POPULARITY AS 
(
	SELECT MIN(popularity_score) AS min_popularity_score  FROM D_POPULARITY
)
SELECT
	SONG.song_name
    ,POPU.popularity_score
FROM F_SPOTIFY FACT

LEFT JOIN D_SONG SONG
	ON FACT.song_id = SONG.song_id
LEFT JOIN D_POPULARITY POPU
	ON FACT.song_popularity_id = POPU.popularity_id 
INNER JOIN MIN_POPULARITY
	on MIN_POPULARITY.min_popularity_score = POPU.popularity_score
