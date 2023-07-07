--1. 
CREATE TABLE marvels (ID INTEGER PRIMARY KEY,
    name TEXT,
    popularity INTEGER,
    alignment TEXT,
    gender TEXT, 
    height_m NUMERIC,
    weight_kg NUMERIC,
    hometown TEXT,
    intelligence INTEGER,
    strength INTEGER,
    speed INTEGER,
    durability INTEGER,
    energy_Projection INTEGER,
    fighting_Skills INTEGER);

--Output - no rows selected

--2.
INSERT INTO marvels VALUES(1, "Spider Man", 1, "Good", "Male", 1.78, 75.75, "USA", 4, 4, 3, 3, 1, 4); 
INSERT INTO marvels VALUES(2, "Iron Man", 20, "Neutral", "Male", 1.98, 102.58, "USA", 6, 6, 5, 6, 6, 4); 
INSERT INTO marvels VALUES(3, "Hulk", 18, "Neutral", "Male", 2.44, 635.29, "USA", 1, 7, 3, 7, 5, 4); 
INSERT INTO marvels VALUES(4, "Wolverine", 3, "Good", "Male", 1.6, 88.46, "Canada", 2, 4, 2, 4, 1, 7);
INSERT INTO marvels VALUES(5, "Thor", 5, "Good", "Male", 1.98, 290.3, "Asgard", 2, 7, 7, 6, 6, 4);
INSERT INTO marvels VALUES(6, "Green Goblin", 91, "Bad", "Male", 1.93, 174.63, "USA", 4, 4, 3, 4, 3, 3);
INSERT INTO marvels VALUES(7, "Magneto", 11, "Neutral", "Male", 1.88, 86.18, "Germany", 6, 3, 5, 4, 6, 4);
INSERT INTO marvels VALUES(8, "Thanos", 47, "Bad", "Male", 2.01, 446.79, "Titan", 6, 7, 7, 6, 6, 4);
INSERT INTO marvels VALUES(9, "Loki", 32, "Bad", "Male", 1.93, 238.14, "Jotunheim", 5, 5, 7, 6, 6, 3);
INSERT INTO marvels VALUES(10, "Doctor Doom", 19, "Bad", "Male", 2.01, 188.24, "Latveria", 6, 4, 5, 6, 6, 4);
INSERT INTO marvels VALUES(11, "Jean Grey", 8, "Good", "Female", 1.68, 52.16, "USA", 3, 2, 7, 7, 7, 4);
INSERT INTO marvels VALUES(12, "Rogue", 4, "Good", "Female", 1.73, 54.43, "USA", 7, 7, 7, 7, 7, 7);
INSERT INTO marvels VALUES(13, "Storm", 2, "Good", "Female", 1.80, 66, "Kenya", 2, 2, 3, 2, 5, 4);
INSERT INTO marvels VALUES(14, "Nightcrawler", 6, "Good", "Male", 1.75, 73, "Germany", 3, 2, 7, 2, 1, 3);
INSERT INTO marvels VALUES(15, "Gambit", 7, "Good", "Male", 1.88, 81, "EUA", 2, 2, 2, 2, 2, 4);
INSERT INTO marvels VALUES(16, "Captain America", 9, "Good", "Male", 1.88, 108, "EUA", 3, 3, 2, 3, 1, 6);
INSERT INTO marvels VALUES(17, "Cyclops", 10, "Good", "Male", 1.90, 88, "EUA", 3, 2, 2, 2, 5, 4);
INSERT INTO marvels VALUES(18, "Emma Frost", 12, "Neutral", "Female", 1.78, 65, "EUA", 4, 4, 2, 5, 5, 3);
INSERT INTO marvels VALUES(19, "Kitty Pryde", 13, "Good", "Female", 1.68, 50, "EUA", 4, 2, 2, 3, 1, 5);
INSERT INTO marvels VALUES(20, "Daredevil", 14, "Good", "Male", 1.83, 91, "EUA", 3, 3, 2, 2, 4, 5);
INSERT INTO marvels VALUES(21, "Punisher", 50, "Neutral", "Male", 1.85, 91, "EUA", 3, 3, 2, 2, 1, 6);
INSERT INTO marvels VALUES(22, "Silver Surfer", 33, "Good", "Male", 1.93, 102, "Zenn-La", 3, 7, 7, 6, 7, 2);
INSERT INTO marvels VALUES(23, "Ghost Rider", 86, "Good", "Male", 1.88, 99, "EUA", 2, 4, 3, 5, 4, 2);
INSERT INTO marvels VALUES(24, "Venon", 78, "Neutral", "Male", 1.90, 118, "EUA", 3, 4, 2, 6, 1, 4);
INSERT INTO marvels VALUES(25, "Juggernaut", 76, "Neutral", "Male", 2.87, 862, "EUA", 2, 7, 2, 7, 1, 4);
INSERT INTO marvels VALUES(26, "Professor X", 58, "Good", "Male", 1.83, 86, "EUA", 5, 2, 2, 2, 5, 3);

--Output - no rows selected

--3.
SELECT * FROM marvels
ORDER BY alignment desc;

/*Output:

ID             name                popularity        alignment        gender    height_m    weight_kg    hometown    intelligence    strength    speed    durability    energy_Projection    fighting_Skills
--             ----                ----------        ---------        ------    --------    ---------    --------    ------------    --------    -----    ----------    -----------------    ---------------
2              Iron Man            20                Neutral          Male      1.98        102.58       USA             6               6          5          6               6                    4
3              Hulk                18                Neutral          Male      2.44        635.29       USA       	     1             	 7         	3          7               5                    4
7              Magneto             11                Neutral          Male      1.88        86.18        Germany         6               3          5          4               6                    4
18             Emma Frost          12                Neutral          Female    1.78        65           EUA             4               4          2          5               5                    3
21             Punisher            50              	 Neutral	        Male      1.85        91           EUA             3               3	        2          2	             1	                  6
24             Venon               78              	 Neutral	        Male      1.9         118          EUA             3               4	        2          6               1	                  4
25             Juggernaut          76              	 Neutral	        Male      2.87        862          EUA        	   2               7	        2          7	             1	                  4
1              Spider Man          1	               Good	            Male      1.78        75.75        USA        	   4               4	        3          3	             1	                  4
4              Wolverine           3                 Good	            Male      1.6	        88.46        Canada    	     2               4	        2          4	             1	                  7
5              Thor                5                 Good	            Male      1.98        290.3        Asgard    	     2               7	        7          6	             6	                  4
11             Jean Grey           8	               Good	            Female    1.68        52.16        USA        	   3               2	        7          7	             7	                  4
12             Rogue               4	               Good	            Female    1.73        54.43        USA        	   7               7	        7          7	             7	                  7
13             Storm               2	               Good	            Female    1.8         66           Kenya      	   2               2	        3          2	             5	                  4
14             Nightcrawler        6	               Good             Male      1.75        73	         Germany    	   3               2	        7          2	             1	                  3
15             Gambit              7	               Good	            Male      1.88        81	         EUA        	   2               2	        2          2	             2	                  4
16             Captain America     9	               Good	            Male      1.88        108	         EUA        	   3	             3	        2          3	             1	                  6
17             Cyclops             10              	 Good	            Male      1.9         88	         EUA        	   3	             2	        2          2	             5	                  4
19             Kitty Pryde       	 13              	 Good	            Female    1.68        50	         EUA        	   4	             2	        2          3	             1	                  5
20             Daredevil         	 14	               Good	            Male      1.83        91	         EUA        	   3	             3	        2          2	             4	                  5
22             Silver Surfer     	 33              	 Good	            Male      1.93        102	         Zenn-La    	   3	             7	        7          6	             7	                  2
23             Ghost Rider       	 86	               Good	            Male      1.88        99	         EUA        	   2	             4	        3          5	             4	                  2
26             Professor X       	 58	               Good	            Male      1.83        86	         EUA        	   5	             2	        2          2	             5	                  3
6              Green Goblin	       91	               Bad	            Male      1.93        174.63	     USA        	   4	             4	        3          4	             3	                  3
8              Thanos              47	               Bad	            Male      2.01        446.79	     Titan	         6	             7	        7          6	             6	                  4
9              Loki              	 32              	 Bad	            Male      1.93        238.14	     Jotunheim  	   5	             5	        7          6	             6	                  3
10             Doctor Doom	       19	               Bad	            Male      2.01        188.24	     Latveria  	     6	             4	        5          6	             6	                  4

*/

--4.
SELECT name, MAX(intelligence) AS smartest FROM marvels;

/*Output:

name    smartest
----    --------
Rogue      7

*/

--5.
SELECT name, MIN(intelligence) AS dumbest FROM marvels;

/*Output:

name    dumbest
----    -------
Hulk      1

*/

--6.
SELECT avg(intelligence) AS average_intelligence FROM marvels;

/*Output:

average_intelligence
--------------------
3.6153846153846154

*/

--7.
SELECT name, alignment, gender, fighting_skills FROM marvels
GROUP BY name
HAVING fighting_skills > 4
ORDER BY gender;

/*Output:

name              alignment      gender      fighting_Skills
----              ---------      ------      ---------------
Kitty Pryde       Good           Female            5
Rogue             Good           Female            7
Captain America   Good           Male              6
Daredevil         Good           Male              5
Punisher          Neutral        Male	             6
Wolverine         Good           Male	             7

*/

--8.
SELECT name, gender, intelligence,
    CASE
        WHEN intelligence > 5 THEN "High"
        WHEN intelligence > 3 THEN "Medium"
        ELSE "Low"
    END AS ranked_intelligence
FROM marvels
ORDER BY
    CASE 
        WHEN ranked_intelligence = "High" THEN 1
        WHEN ranked_intelligence = "Medium" THEN 2
        WHEN ranked_intelligence = "Low" THEN 3
    END, ranked_intelligence, intelligence desc;

/*Output:

name                gender    intelligence	ranked_intelligence
----                ------    -----------   -------------------
Rogue               Female         7               High
Iron Man            Male        	 6	             High
Magneto             Male	         6	             High
Thanos	            Male	         6               High
Doctor Doom	        Male	         6	             High
Loki	              Male	         5	             Medium
Professor X	        Male	         5	             Medium
Spider Man	        Male	         4	             Medium
Green Goblin	      Male	         4	             Medium
Emma Frost	        Female	       4	             Medium
Kitty Pryde	        Female	       4	             Medium
Jean Grey	          Female	       3	             Low
Nightcrawler	      Male	         3	             Low
Captain America	    Male	         3	             Low
Cyclops	            Male	         3	             Low
Daredevil	          Male	         3	             Low
Punisher	          Male	         3	             Low
Silver Surfer	      Male	         3               Low
Venon	              Male	         3	             Low
Wolverine	          Male	         2	             Low
Thor	              Male	         2	             Low
Storm	              Female	       2	             Low
Gambit	            Male	         2	             Low
Ghost Rider	        Male	         2	             Low
Juggernaut	        Male	         2	             Low
Hulk	              Male	         1	             Low

*/

--9.
SELECT name, alignment, gender, hometown
FROM marvels
    WHERE hometown = "USA"
        OR hometown = "Canada"
        AND fighting_skills > 5
    ORDER BY alignment;
    
/*Output:

name              alignment    gender    hometown
----              ---------    ------    --------
Green Goblin         Bad       Male      USA
Spider Man           Good      Male	     USA
Wolverine	           Good	     Male	     Canada
Jean Grey	           Good	     Female	   USA
Rogue	               Good      Female	   USA
Iron Man	           Neutral	 Male	     USA
Hulk	               Neutral	 Male	     USA

*/
