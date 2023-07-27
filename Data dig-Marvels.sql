# I started with creating a table 
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

# I then inserted som data
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


Q1: Which Marvel characters have their intelligence ranked as "High," "Medium," or "Low"?
# This question provides valuable insights into the intelligence distribution of Marvel characters. It helps businesses understand the intellectual capabilities of different characters, which can influence character development, storytelling, and fan engagement.
# Importance: Knowing how Marvel characters' intelligence is categorized helps creators and writers design well-balanced and compelling narratives. Businesses can also use this information for marketing and promoting characters based on their intelligence levels.
    
SELECT * FROM marvels
ORDER BY alignment desc;


Q2: Who is the smartest Marvel character, and what is their intelligence level?
# Identifying the smartest Marvel character is of interest to fans and can be a topic of debate and discussion within the fandom. Businesses can leverage this information for promotional campaigns, merchandise creation, and storytelling strategies.
# Importance: Knowing the smartest character allows businesses to focus on marketing campaigns and merchandise centered around this popular and highly intelligent character, potentially driving higher sales and fan engagement.
    
SELECT name, MAX(intelligence) AS smartest FROM marvels;


Q3: Who is the least intelligent (dumbest) Marvel character, and what is their intelligence level?
# Understanding the least intelligent Marvel character is similarly intriguing to fans and can spark debates and conversations about character development and comic book lore.
# Importance: Highlighting the least intelligent character can be a unique marketing angle, attracting fans who appreciate different facets of the Marvel universe. It also provides opportunities for comedic relief and character growth in the narrative.
    
SELECT name, MIN(intelligence) AS dumbest FROM marvels;


Q4: What is the average intelligence level of all Marvel characters?
# Calculating the average intelligence level of Marvel characters gives an overall perspective on the collective intelligence within the Marvel universe.
# Importance: This information helps businesses understand the general intellectual landscape of their character roster, which can aid in creating diverse and relatable characters.
    
SELECT avg(intelligence) AS average_intelligence FROM marvels;


Q5: Which Marvel characters have a fighting skills rating higher than 4, and what are their names, alignments, genders, and fighting skills?
# This question is essential for businesses interested in character analysis, power scaling, and battle scenarios within the Marvel universe. It can be a valuable resource for writers, fans, and comic book enthusiasts.
# Importance: Highlighting characters with high fighting skills can inspire engaging storylines, action-packed scenes, and merchandise creation focused on the prowess of these powerful characters.
    
SELECT name, alignment, gender, fighting_skills FROM marvels
GROUP BY name
HAVING fighting_skills > 4
ORDER BY gender;


Q6: Which Marvel characters have their intelligence ranked as "High," "Medium," or "Low," and what are their names, genders, and intelligence levels?
SELECT name, gender, intelligence,
# This question is a more detailed version of Q1, providing additional information about the characters' names and genders along with their intelligence rankings.
# Importance: This detailed breakdown can be useful for character analysis, fan discussions, and marketing strategies that target specific intelligence levels or character traits.
    
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


Q7: Which Marvel characters are from the USA or Canada and have fighting skills higher than 5, and what are their names, alignments, genders, and hometowns?
# This question focuses on the geographical and skill-based aspects of Marvel characters. It can be relevant for writers creating localized storylines or events.
# Importance: Knowing the hometowns and fighting skills of characters from specific regions can help businesses tailor content and merchandise to regional preferences, potentially enhancing fan engagement in those areas.
    
SELECT name, alignment, gender, hometown
FROM marvels
    WHERE hometown = "USA"
        OR hometown = "Canada"
        AND fighting_skills > 5
    ORDER BY alignment;
    
