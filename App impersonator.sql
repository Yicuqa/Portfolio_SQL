--1.
SET AUTOCOMMIT OFF;
CREATE TABLE playgame (
id INTEGER PRIMARY KEY AUTOINCREMENT,
username TEXT,
email TEXT,
high_score NUMERIC,
games_won NUMERIC,
games_lost NUMERIC
);
COMMIT;

--Output - Commit complete.

--2. 
SET AUTOCOMMIT OFF;
INSERT INTO playgame (username, email, high_score, games_won, games_lost)
    VALUES ("Fishsticks", "schwayfish@lake.com", 1337, 42, 59);
    
INSERT INTO playgame (username, email, high_score, games_won, games_lost)
    VALUES ("Kenny", "mumble@lake.com", 9999, 999, 1);
    
INSERT INTO playgame (username, email, high_score, games_won, games_lost)
    VALUES ("Kyle", "heydude@lake.com", 5432, 34, 12);
    
INSERT INTO playgame (username, email, high_score, games_won, games_lost)
    VALUES ("Stan", "itsnotabigdeal@lake.com", 2582, 101, 45);
    
INSERT INTO playgame (username, email, high_score, games_won, games_lost)
    VALUES ("Butters", "drchaos@lake.com", -1005, 0, 68);
    
INSERT INTO playgame (username, email, high_score, games_won, games_lost)
    VALUES ("Randy", "ijustwantobecool@lake.com", 1, 1, 999);

--Output - no rows selected

--3.
SELECT * FROM playgame;

/*Output:

id		username			email												high_score		games_won		games_lost
--		--------			-----												----------		---------		----------
1			Fishsticks		schwayfish@lake.com						1337					42					59
2			Kenny					mumble@lake.com								9999					999					1
3			Kyle					heydude@lake.com							5432					34					12
4			Stan					itsnotabigdeal@lake.com				2582					101					45
5			Butters				drchaos@lake.com							-1005					0						68
6			Randy					ijustwantobecool@lake.com			1							1						999

*/

--4.
BEGIN TRANSACTION;
UPDATE playgame
    SET high_score = -100
    WHERE id = 6;
UPDATE playgame
    SET games_lost = 1000
    WHERE username = "Randy"
        AND games_lost = 999;
COMMIT;

--Output - no rows selected

--5.
SELECT * FROM playgame;

/*Output:

id		username			email												high_score		games_won		games_lost
--		--------			-----												----------		---------		----------
1			Fishsticks		schwayfish@lake.com						1337					42					59
2			Kenny					mumble@lake.com								9999					999					1
3			Kyle					heydude@lake.com							5432					34					12
4			Stan					itsnotabigdeal@lake.com				2582					101					45
5			Butters				drchaos@lake.com							-1005					0						68
6			Randy					ijustwantobecool@lake.com			-100					1						1000

*/
--6.
DELETE FROM playgame WHERE username = "Randy";

SELECT * FROM playgame;

/*Output:

id		username			email												high_score		games_won		games_lost
--		--------			-----												----------		---------		----------
1			Fishsticks		schwayfish@lake.com						1337					42					59
2			Kenny					mumble@lake.com								9999					999					1
3			Kyle					heydude@lake.com							5432					34					12
4			Stan					itsnotabigdeal@lake.com				2582					101					45
5			Butters				drchaos@lake.com							-1005					0						68

*/
