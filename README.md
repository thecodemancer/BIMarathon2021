# Spotify Data Analysis

<p align="center" style="background-color:rgb(41, 65, 171); ">
  <img src="images/spotify_cover.jpg?raw=true?raw=true" style="width:100%">
</p>

## Project mission and goal

As the years go by, tastes and fashions keep changing, in addition to new musical genres being created. The dataset is based on the reproductions in the Spotify app

## Goal

Analyze the most popular songs and genres on the Spotify through release year and by the following cutoffs: duration, explicit content, artist, danceability, energy, key, loudness, mode, speechiness, acousticness, instrumentalness, liveness, valence, tempo, time signature, genre

## Who is this project for?

End user of the app.

## Business Questions

* What is the least popular song?
* What is the most popular song?
* What is the longest song
* What is the shortest song
* What is the least popular artist?
* What is the most popular artist?
* Who is the artist with the most songs
* What is the genre with the least songs
* What is the genre with the most songs
* What is the oldest song and what artist was it by?

### By song
* What is the most popular artist for each song?
* What is the least popular artist for each song?
* What is the average popularity of the artists on a song?
* Who is the artist with the most followers for each song?
* What is the artist with the fewest followers for each song?
* What is the average number of artist followers on a song?

### By gender
* What is the most popular artist for each genre?
* What is the least popular artist for each genre?
* What is the average popularity of artists in a genre?
* Who is the artist with the most followers for each genre?
* What is the artist with the least followers for each genre?
* What is the average number of followers of the artists for each genre?
* What is the longest song by genre
* What is the shortest song by genre
* What is the most popular song by genre
* What is the least popular song by genre

## Project attributes (dimensions and facts)

### Dimensions:

* DIM_SONG
* D_KEY
* D_EXPLICIT
* D_MODE
* D_ARTIST
* D_POPULARITY
* D_GENRE
* D_TIME_SIGNATURE
* D_YEAR

### Facts

* FACT_SPOTIFY

### Metrics to analyze

* Will be analizing genre's popularity based on songs and number of followers by each artist
* Will be analizing song's popularity its relation with the artist's popularity

## About the Processes

We run a Python script and then with the data loaded in the database we run some transformation queries.

### ETL Process

First, because the dataset has characters of different types such as Chinese, Cyrillic, Hebrew, etc. We convert the columns name, artists, artist 1, artist 2, ... into a utf-8 encoded version of the string. The process is described in */ETL/load_file.ipynb*

### ELT Process

In the database, we have the following staging tables

temp_table
temp_table_2
tamp_table_3
tamp_table_4

Which must be populated one after the other. Sequentially. The details of the transformations can be seen in */ELT/temp_table_2.sql*, */ELT/temp_table_3.sql*, and */ELT/temp_table_4.sql*

