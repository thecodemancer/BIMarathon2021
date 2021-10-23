INSERT INTO temp_table_2
(
	id_track
	,name
	,popularity
	,duration_ms
	,explicit
	,artists
	,id_artists
	,release_date
	,release_year
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
	,artist_id_1
	,artist_id_1_followers
	,artist_id_1_genres
	,artist_id_1_popularity
	,artist_id_2
	,artist_id_2_followers
	,artist_id_2_genres
	,artist_id_2_popularity
	,artist_id_3
	,artist_id_3_followers
	,artist_id_3_genres
	,artist_id_3_popularity
	,artist_id_4
	,artist_id_5
	,artist_id_6
	,artist_id_7
	,artist_id_8
	,artist_id_9
	,artist_id_10
	,artist_id_11
	,artist_id_12
	,artist_id_13
	,artist_id_14
	,artist_id_15
	,artist_id_16
	,artist_id_17
	,artist_id_18
	,artist_id_19
	,artist_id_20
	,artist_id_21
	,artist_id_22
	,artist_id_23
	,artist_id_24
	,artist_id_25
	,artist_id_26
	,artist_id_27
	,artist_1
	,artist_2
	,artist_3
	,artist_4
	,artist_5
	,artist_6
	,artist_7
	,artist_8
	,artist_9
	,artist_10
	,artist_11
	,artist_12
	,artist_13
	,artist_14
	,artist_15
	,artist_16
	,artist_17
	,artist_18
	,artist_19
	,artist_20
	,artist_21
	,artist_22
	,artist_23
	,artist_24
	,artist_25
	,artist_26
	,artist_27
)
SELECT 
	id_track
	,CONVERT(CAST(CONVERT(name USING latin1) AS BINARY) USING utf8) AS name
	,popularity
	,duration_ms
	,explicit
	,CONVERT(CAST(CONVERT(artists USING latin1) AS BINARY) USING utf8) AS artists
	,id_artists
	,release_date
	,CASE WHEN release_year = '#VALUE!' THEN -1 END AS release_year
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
	,artist_id_1
	,artist_id_1_followers
	,artist_id_1_genres
	,artist_id_1_popularity
	,artist_id_2
	,artist_id_2_followers
	,artist_id_2_genres
	,artist_id_2_popularity
	,artist_id_3
	,artist_id_3_followers
	,artist_id_3_genres
	,artist_id_3_popularity
	,artist_id_4
	,artist_id_5
	,artist_id_6
	,artist_id_7
	,artist_id_8
	,artist_id_9
	,artist_id_10
	,artist_id_11
	,artist_id_12
	,artist_id_13
	,artist_id_14
	,artist_id_15
	,artist_id_16
	,artist_id_17
	,artist_id_18
	,artist_id_19
	,artist_id_20
	,artist_id_21
	,artist_id_22
	,artist_id_23
	,artist_id_24
	,artist_id_25
	,artist_id_26
	,artist_id_27
	,CONVERT(CAST(CONVERT(artist_1 USING latin1) AS BINARY) USING utf8) AS artist_1
	,CONVERT(CAST(CONVERT(artist_2 USING latin1) AS BINARY) USING utf8) AS artist_2
	,CONVERT(CAST(CONVERT(artist_3 USING latin1) AS BINARY) USING utf8) AS artist_3
	,CONVERT(CAST(CONVERT(artist_4 USING latin1) AS BINARY) USING utf8) AS artist_4
	,CONVERT(CAST(CONVERT(artist_5 USING latin1) AS BINARY) USING utf8) AS artist_5
	,CONVERT(CAST(CONVERT(artist_6 USING latin1) AS BINARY) USING utf8) AS artist_6
	,CONVERT(CAST(CONVERT(artist_7 USING latin1) AS BINARY) USING utf8) AS artist_7
	,CONVERT(CAST(CONVERT(artist_8 USING latin1) AS BINARY) USING utf8) AS artist_8
	,CONVERT(CAST(CONVERT(artist_9 USING latin1) AS BINARY) USING utf8) AS artist_9
	,CONVERT(CAST(CONVERT(artist_10 USING latin1) AS BINARY) USING utf8) AS artist_10
	,CONVERT(CAST(CONVERT(artist_11 USING latin1) AS BINARY) USING utf8) AS artist_11
	,CONVERT(CAST(CONVERT(artist_12 USING latin1) AS BINARY) USING utf8) AS artist_12
	,CONVERT(CAST(CONVERT(artist_13 USING latin1) AS BINARY) USING utf8) AS artist_13
	,CONVERT(CAST(CONVERT(artist_14 USING latin1) AS BINARY) USING utf8) AS artist_14
	,CONVERT(CAST(CONVERT(artist_15 USING latin1) AS BINARY) USING utf8) AS artist_15
	,CONVERT(CAST(CONVERT(artist_16 USING latin1) AS BINARY) USING utf8) AS artist_16
	,CONVERT(CAST(CONVERT(artist_17 USING latin1) AS BINARY) USING utf8) AS artist_17
	,CONVERT(CAST(CONVERT(artist_18 USING latin1) AS BINARY) USING utf8) AS artist_18
	,CONVERT(CAST(CONVERT(artist_19 USING latin1) AS BINARY) USING utf8) AS artist_19
	,CONVERT(CAST(CONVERT(artist_20 USING latin1) AS BINARY) USING utf8) AS artist_20
	,CONVERT(CAST(CONVERT(artist_21 USING latin1) AS BINARY) USING utf8) AS artist_21
	,CONVERT(CAST(CONVERT(artist_22 USING latin1) AS BINARY) USING utf8) AS artist_22
	,CONVERT(CAST(CONVERT(artist_23 USING latin1) AS BINARY) USING utf8) AS artist_23
	,CONVERT(CAST(CONVERT(artist_24 USING latin1) AS BINARY) USING utf8) AS artist_24
	,CONVERT(CAST(CONVERT(artist_25 USING latin1) AS BINARY) USING utf8) AS artist_25
	,CONVERT(CAST(CONVERT(artist_26 USING latin1) AS BINARY) USING utf8) AS artist_26
	,CONVERT(CAST(CONVERT(artist_27 USING latin1) AS BINARY) USING utf8) AS artist_27
FROM temp_table
LIMIT 0,100000;
#LIMIT 100000,100000;
#LIMIT 200000,100000;
#LIMIT 300000,100000;
#LIMIT 400000,100000;
#LIMIT 500000,100000;
