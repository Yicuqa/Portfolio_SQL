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
#This question is crucial for businesses like dance studios, fitness centers, and event organizers. Identifying the top 10 songs that are best for dancing can enhance dance classes, workout routines, and dance events, leading to improved customer experience and engagement.
#Importance: Knowing the most dance-worthy songs helps businesses create playlists, curate dance events, and offer dance-oriented services that attract dancers and fitness enthusiasts.

SELECT track_name, danceability FROM spotify_data
ORDER BY danceability desc
LIMIT 10;


Q2. Order the songs list by popularity.
#This question is relevant for music streaming platforms, radio stations, and event organizers. Ordering the songs list by popularity allows businesses to create playlists, set radio rotations, and prioritize songs for events based on their popularity among the target audience.
#Importance: Having the songs listed by popularity can enhance user engagement, as listeners are more likely to enjoy familiar and popular songs.

SELECT track_name, popularity FROM spotify_data
ORDER BY popularity desc;


Q3. Which tracks have a popularity rate of over 85 and energy greater than 0.75? I added an extra order by for this one.
#This question is valuable for music streaming platforms, radio stations, and music event organizers. Identifying tracks with high popularity and energy can help create playlists, radio segments, and event setlists that keep the audience energized and entertained.
#Importance: Offering content with high popularity and energy can lead to increased user retention, longer listening sessions, and improved overall user satisfaction.

SELECT track_name, popularity, energy FROM spotify_data
WHERE popularity > 85
AND energy >0.75
ORDER BY popularity desc, energy desc

Q4. What artists made the songs list the most and how many times?
#This question is relevant for music labels, streaming platforms, and event organizers. Knowing which artists appear most frequently in the songs list allows businesses to understand artist popularity and make informed decisions regarding artist promotions, playlist curation, and event bookings.
#Importance: Recognizing the most featured artists helps businesses cater to their audience's preferences and promote collaborations or themed events centered around popular artists.

SELECT DISTINCT artist_name, COUNT(artist_name) as number_of_songs
FROM spotify_data
GROUP BY artist_name
ORDER BY number_of_songs DESC
LIMIT 10;

Q5. What is the longest track on the list along with the length of it?
#This question is valuable for music streaming platforms and event organizers. Identifying the longest track helps manage playlist durations, plan event schedules, and offer insights into listener preferences for track lengths.
#Importance: Knowing the longest track's duration enables businesses to create playlists with appropriate durations, ensuring smooth transitions and enhanced user experience during events or listening sessions.

SELECT track_name, duration_ms/(1000)/(60) AS length_minutes FROM spotify_data
ORDER BY duration_ms desc
LIMIT 1;
