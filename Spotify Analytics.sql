# For this project, I downloaded Spotify data from Kaggle.
# Then I created a table to insert Spotify data into.
# I then performed analytics on the data using Postgresql.


CREATE TABLE spotify_data (
id integer PRIMARY KEY,
artist_name varchar NOT NULL,
track_name varchar NOT NULL,
track_id varchar NOT NULL,
popularity integer NOT NULL,
danceability decimal(4,3) NOT NULL,
energy decimal(4,3) NOT NULL,
key integer NOT NULL,
loudness decimal(5,3) NOT NULL,
mode integer NOT NULL,
speechiness decimal(5,4) NOT NULL,
acousticness decimal(6,5) NOT NULL,
instrumentalness text NOT NULL,
liveness decimal(5,4) NOT NULL,
valence decimal(4,3) NOT NULL,
tempo decimal(6,3) NOT NULL,
duration_ms integer NOT NULL,
release_year integer NOT NULL
) ;

#After table was created, I inserted the Spotify_Data.csv into the table.


#Once all was uploaded, I explored the data using the following SQL queries and answered questions as below.
SELECT * FROM spotify_date;


Q1. Select the Top 10 best songs with artist to dance to from the list.
QUERY:
SELECT track_name, danceability FROM spotify_data
ORDER BY danceability desc
LIMIT 10;

Q2. Order the songs list by popularity.
QUERY:
SELECT track_name, popularity FROM spotify_data
ORDER BY popularity desc;

Q3. Which tracks have a popularity rate of over 85 and energy greater than 0.75? I added an extra order by for this one.
QUERY:
SELECT track_name, popularity, energy FROM spotify_data
WHERE popularity > 85
AND energy >0.75
ORDER BY popularity desc, energy desc

Q4. What artists made the songs list the most and how many times?
QUERY:
SELECT DISTINCT artist_name, COUNT(artist_name) as number_of_songs
FROM spotify_data
GROUP BY artist_name
ORDER BY number_of_songs DESC
LIMIT 10;

Q5. What is the longest track on the list along with the length of it?
QUERY:
SELECT track_name, duration_ms/(1000)/(60) AS length_minutes FROM spotify_data
ORDER BY duration_ms desc
LIMIT 1;
