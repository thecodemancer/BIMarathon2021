INSERT INTO TEMP_TABLE_4
WITH NS AS (
      select 1 as n union all
      select 2 union all
      select 3 union all
      select 4 union all
      select 5 union all
      select 6 union all
      select 7 union all
      select 8 union all
      select 9 union all
      select 11 union all
      select 12 union all
      select 13 union all
      select 14 union all
      select 15 union all
      select 16 union all
      select 17 union all
      select 18 union all
      select 19 union all
      select 20 union all
      select 21 union all
      select 22 union all
      select 23 union all
      select 24 union all
      select 25 union all
      select 26 union all
      select 27 union all
      select 28
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

      ,TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(
      REPLACE(REPLACE(REPLACE(REPLACE(BASE.artist_genres,'[',''),']',''),"'",''),'"','')
      , ',', NS.n), ',', -1)) as artist_genre

    ,artist_popularity


FROM temp_table_3 BASE
INNER JOIN NS
    ON NS.n <= CHAR_LENGTH(BASE.artist_genres) - CHAR_LENGTH(REPLACE(BASE.artist_genres, ',', '')) + 1

LIMIT 800000,50000