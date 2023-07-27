# I started with creating table for famous people
    
CREATE TABLE famous_people (
id INTEGER PRIMARY KEY AUTOINCREMENT,
fullname TEXT,
occupation TEXT);


# I then inserted data into the table
INSERT INTO famous_people (fullname, occupation) VALUES ("James Cameron", "Director");
INSERT INTO famous_people (fullname, occupation) VALUES ("Hugh Jackman", "Actor");
INSERT INTO famous_people (fullname, occupation) VALUES ("Stephanie Meyers", "Writer");
INSERT INTO famous_people (fullname, occupation) VALUES ("Ryan Reynolds", "Actor");
INSERT INTO famous_people (fullname, occupation) VALUES ("Zara Larsson", "Singer");
INSERT INTO famous_people (fullname, occupation) VALUES ("Angelina Jolie", "Actor");
INSERT INTO famous_people (fullname, occupation) VALUES ("Carrie Fisher", "Actor");
INSERT INTO famous_people (fullname, occupation) VALUES ("Joanne Rowling", "Writer");
INSERT INTO famous_people (fullname, occupation) VALUES ("Earnest Hemmingway", "Writer");
INSERT INTO famous_people (fullname, occupation) VALUES ("JR. Tolkien", "Writer");
INSERT INTO famous_people (fullname, occupation) VALUES ("Elvis Presley", "Singer");
INSERT INTO famous_people (fullname, occupation) VALUES ("Bob Dylan", "Singer");
INSERT INTO famous_people (fullname, occupation) VALUES ("Robyn Fenty", "Singer");
INSERT INTO famous_people (fullname, occupation) VALUES ("Megan Fox", "Actor");
INSERT INTO famous_people (fullname, occupation) VALUES ("Joel Moore", "Actor");
INSERT INTO famous_people (fullname, occupation) VALUES ("Philip Noyce", "Director");
INSERT INTO famous_people (fullname, occupation) VALUES ("Michael Bay", "Director");
INSERT INTO famous_people (fullname, occupation) VALUES ("George Lucas", "Director");
INSERT INTO famous_people (fullname, occupation) VALUES ("Shawn Levy", "Director");
INSERT INTO famous_people (fullname, occupation) VALUES ("James Mangold", "Director");


# Ineedet to create a table for movies
CREATE TABLE movies (
id INTEGER PRIMARY KEY AUTOINCREMENT,
actor_id INTEGER,
director_id INTEGER,
title TEXT);


# I also inserted data into the movie-table
INSERT INTO movies (actor_id, director_id, title) VALUES (15,1, "Avatar");
INSERT INTO movies (actor_id, director_id, title) VALUES (2,20, "Logan - The Wolverine");
INSERT INTO movies (actor_id, director_id, title) VALUES (4,19, "Free guy");
INSERT INTO movies (actor_id, director_id, title) VALUES (6,18, "Star Wars: Return of the Jedi");
INSERT INTO movies (actor_id, director_id, title) VALUES (7,16, "Salt");
INSERT INTO movies (actor_id, director_id, title) VALUES (14,17, "Transformers");


# I created another table for books
CREATE TABLE books (
id INTEGER PRIMARY KEY AUTOINCREMENT,
writer_id INTEGER,
title TEXT);


# After the creation of this table I also inserted some data
INSERT INTO books (writer_id, title) VALUES (3, "Twilight");
INSERT INTO books (writer_id, title) VALUES (8, "Harry Potter");
INSERT INTO books (writer_id, title) VALUES (9, "The Old Man and The Sea");
INSERT INTO books (writer_id, title) VALUES (10, "Lord of The Ring");


# I created one last table for songs
CREATE TABLE songs (
id INTEGER PRIMARY KEY AUTOINCREMENT,
singer_id INTEGER,
name TEXT);


# And then inserted some data
INSERT INTO songs (singer_id, name) VALUES (5, "Lush Life");
INSERT INTO songs (singer_id, name) VALUES (11, "Jailhouse Rock");
INSERT INTO songs (singer_id, name) VALUES (12, "Mr. Tambourineman");
INSERT INTO songs (singer_id, name) VALUES (13, "Umbrella");


Q1: Which actors and directors were involved in each movie?
# For businesses in the film industry, understanding the cast and crew of each movie is crucial. Movie production companies, streaming platforms, and cinema chains need to know the actors and directors associated with each film to market and promote their content effectively.
# Importance: Knowing the cast and crew allows businesses to highlight popular actors and directors in their promotional materials. This can attract audiences who are fans of specific actors or are interested in the director's style, leading to increased movie ticket sales, streaming subscriptions, and revenue.

SELECT movies.title AS Movie, a.fullname AS Actor, b.fullname AS Director FROM movies
    JOIN famous_people a
        ON movies.actor_id = a.id
    JOIN famous_people b
        ON movies.director_id = b.id;


Q2: Which artists (singers) performed each song?
# In the music industry, knowing the artists (singers) behind each song is essential for music labels, streaming platforms, and concert organizers. It enables them to properly credit artists and manage licensing and royalties.
# Importance: Crediting the correct artists ensures legal compliance, fair compensation, and proper recognition. It also allows businesses to promote songs based on the popularity and reputation of the artists, which can lead to increased song streams, downloads, and concert ticket sales.

SELECT songs.name AS Song, a.fullname AS Artist FROM songs
    JOIN famous_people a
        ON songs.singer_id = a.id;

    
Q3: Who are the writers of each book?
# For businesses in the publishing industry, identifying the writers of each book is fundamental. Publishers, bookstores, and online retailers need this information for book categorization, marketing, and author promotion.
# Importance: Knowing the writers helps businesses target specific genres and authors for marketing campaigns. It allows them to create personalized recommendations for readers based on their favorite authors' works, leading to increased book sales and customer satisfaction.

SELECT books.title AS Book, a.fullname AS Writer From books
    Join famous_people a
        ON books.writer_id = a.id;
