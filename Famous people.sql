--1.
CREATE TABLE famous_people (
id INTEGER PRIMARY KEY AUTOINCREMENT,
fullname TEXT,
occupation TEXT);

--Output - no rows selected

--2. 
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

--Output - no rows selected

--3.
CREATE TABLE movies (
id INTEGER PRIMARY KEY AUTOINCREMENT,
actor_id INTEGER,
director_id INTEGER,
title TEXT);

--Output - no rows selected

--4.
INSERT INTO movies (actor_id, director_id, title) VALUES (15,1, "Avatar");
INSERT INTO movies (actor_id, director_id, title) VALUES (2,20, "Logan - The Wolverine");
INSERT INTO movies (actor_id, director_id, title) VALUES (4,19, "Free guy");
INSERT INTO movies (actor_id, director_id, title) VALUES (6,18, "Star Wars: Return of the Jedi");
INSERT INTO movies (actor_id, director_id, title) VALUES (7,16, "Salt");
INSERT INTO movies (actor_id, director_id, title) VALUES (14,17, "Transformers");

--Output - no rows selected

--5.
CREATE TABLE books (
id INTEGER PRIMARY KEY AUTOINCREMENT,
writer_id INTEGER,
title TEXT);

--Output - no rows selected

--6.
INSERT INTO books (writer_id, title) VALUES (3, "Twilight");
INSERT INTO books (writer_id, title) VALUES (8, "Harry Potter");
INSERT INTO books (writer_id, title) VALUES (9, "The Old Man and The Sea");
INSERT INTO books (writer_id, title) VALUES (10, "Lord of The Ring");

--Output - no rows selected

--7.
CREATE TABLE songs (
id INTEGER PRIMARY KEY AUTOINCREMENT,
singer_id INTEGER,
name TEXT);

--Output - no rows selected

--8.
INSERT INTO songs (singer_id, name) VALUES (5, "Lush Life");
INSERT INTO songs (singer_id, name) VALUES (11, "Jailhouse Rock");
INSERT INTO songs (singer_id, name) VALUES (12, "Mr. Tambourineman");
INSERT INTO songs (singer_id, name) VALUES (13, "Umbrella");

--Output - no rows selected

--9.
SELECT movies.title AS Movie, a.fullname AS Actor, b.fullname AS Director FROM movies
    JOIN famous_people a
        ON movies.actor_id = a.id
    JOIN famous_people b
        ON movies.director_id = b.id;

/*Output:

Movie                             Actor              Director
-----                             -----              --------
Avatar                            Joel Moore         James Cameron
Logan - The Wolverine             Hugh Jackman       James Mangold
Free guy                          Ryan Reynolds      Shawn Levy
Star Wars: Return of the Jedi     Angelina Jolie     George Lucas
Salt                              Carrie Fisher      Philip Noyce
Transformers                      Megan Fox          Michael Bay

*/

--10.
SELECT songs.name AS Song, a.fullname AS Artist FROM songs
    JOIN famous_people a
        ON songs.singer_id = a.id;

/*Output:

Song                   Artist
----                   ------
Lush Life              Zara Larsson
Jailhouse Rock         Elvis Presley
Mr. Tambourineman      Bob Dylan
Umbrella               Robyn Fenty

*/

--11.
SELECT books.title AS Book, a.fullname AS Writer From books
    Join famous_people a
        ON books.writer_id = a.id;
/*Output:

Book                         Writer
----                         ------
Twilight                     Stephanie Meyers
Harry Potter                 Joanne Rowling
The Old Man and The Sea      Earnest Hemmingway
Lord of The Ring             JR. Tolkien

*/
