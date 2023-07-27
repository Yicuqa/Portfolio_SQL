# At first I created a new databese
CREATE DATABASE superheroes_2017;


# Then I created tables within the db. I started to create a table for the hero information
CREATE TABLE heroes_information (
name VARCHAR,
gender VARCHAR,
eye_color VARCHAR,
race VARCHAR,
hair_color VARCHAR,
height NUMERIC,
publisher VARCHAR,
skin_color VARCHAR,
alignment VARCHAR,
weight NUMERIC
);


# Then I created a table to hold the information regarding the superpower
CREATE TABLE super_hero_power (
hero_names varchar,
Agility varchar,
Accelerated_Healing varchar,
Lantern_Power_Ring varchar,
Dimensional_Awareness varchar,
Cold_Resistance varchar,
Durability varchar,
Stealth varchar,
Energy_Absorption varchar,
Flight varchar,
Danger_Sense varchar,
Underwater_breathing varchar,
Marksmanship varchar,
Weapons_Master varchar,
Power_Augmentation varchar,
Animal_Attributes varchar,
Longevity varchar,
Intelligence varchar,
Super_Strength varchar,
Cryokinesis varchar,
Telepathy varchar,
Energy_Armor varchar,
Energy_Blasts varchar,
Duplication varchar,
Size_Changing varchar,
Density_Control varchar,
Stamina varchar,
Astral_Travel varchar,
Audio_Control varchar,
Dexterity varchar,
Omnitrix varchar,
Super_Speed varchar,
Possession varchar,
Animal_Oriented_Powers varchar,
WeaponBased_Powers varchar,
Electrokinesis varchar,
Darkforce_Manipulation varchar,
Death_Touch varchar,
Teleportation varchar,
Enhanced_Senses varchar,
Telekinesis varchar,
Energy_Beams varchar,
Magic varchar,
Hyperkinesis varchar,
Jump varchar,
Clairvoyance varchar,
Dimensional_Travel varchar,
Power_Sense varchar,
Shapeshifting varchar,
Peak_Human_Condition varchar,
Immortality varchar,
Camouflage varchar,
Element_Control varchar,
Phasing varchar,
Astral_Projection varchar,
Electrical_Transport varchar,
Fire_Control varchar,
Projection varchar,
Summoning varchar,
Enhanced_Memory varchar,
Reflexes varchar,
Invulnerability varchar,
Energy_Constructs varchar,
Force_Fields varchar,
SelfSustenance varchar,
AntiGravity varchar,
Empathy varchar,
Power_Nullifier varchar,
Radiation_Control varchar,
Psionic_Powers varchar,
Elasticity varchar,
Substance_Secretion varchar,
Elemental_Transmogrification varchar,
Technopath_and_Cyberpath varchar,
Photographic_Reflexes varchar,
Seismic_Power varchar,
Animation varchar,
Precognition varchar,
Mind_Control varchar,
Fire_Resistance varchar,
Power_Absorption varchar,
Enhanced_Hearing varchar,
Nova_Force varchar,
Insanity varchar,
Hypnokinesis varchar,
Animal_Control varchar,
Natural_Armor varchar,
Intangibility varchar,
Enhanced_Sight varchar,
Molecular_Manipulation varchar,
Heat_Generation varchar,
Adaptation varchar,
Gliding varchar,
Power_Suit varchar,
Mind_Blast varchar,
Probability_Manipulation varchar,
Gravity_Control varchar,
Regeneration varchar,
Light_Control varchar,
Echolocation varchar,
Levitation varchar,
Toxin_and_Disease_Control varchar,
Banish varchar,
Energy_Manipulation varchar,
Heat_Resistance varchar,
Natural_Weapons varchar,
Time_Travel varchar,
Enhanced_Smell varchar,
Illusions varchar,
Thirstokinesis varchar,
Hair_Manipulation varchar,
Illumination varchar,
Omnipotent varchar,
Cloaking varchar,
Changing_Armor varchar,
Power_Cosmic varchar,
Biokinesis varchar,
Water_Control varchar,
Radiation_Immunity varchar,
Vision_Telescopic varchar,
Toxin_and_Disease_Resistance varchar,
Spatial_Awareness varchar,
Energy_Resistance varchar,
Telepathy_Resistance varchar,
Molecular_Combustion varchar,
Omnilingualism varchar,
Portal_Creation varchar,
Magnetism varchar,
Mind_Control_Resistance varchar,
Plant_Control varchar,
Sonar varchar,
Sonic_Scream varchar,
Time_Manipulation varchar,
Enhanced_Touch varchar,
Magic_Resistance varchar,
Invisibility varchar,
SubMariner varchar,
Radiation_Absorption varchar,
Intuitive_aptitude varchar,
Vision_Microscopic varchar,
Melting varchar,
Wind_Control varchar,
Super_Breath varchar,
Wallcrawling varchar,
Vision_Night varchar,
Vision_Infrared varchar,
Grim_Reaping varchar,
Matter_Absorption varchar,
The_Force varchar,
Resurrection varchar,
Terrakinesis varchar,
Vision_Heat varchar,
Vitakinesis varchar,
Radar_Sense varchar,
Qwardian_Power_Ring varchar,
Weather_Control varchar,
Vision_XRay varchar,
Vision_Thermal varchar,
Web_Creation varchar,
Reality_Warping varchar,
Odin_Force varchar,
Symbiote_Costume varchar,
Speed_Force varchar,
Phoenix_Force varchar,
Molecular_Dissipation varchar,
Vision_Cryo varchar,
Omnipresent varchar,
Omniscient varchar
);


# Check that heros information were loaded correctly
SELECT
  *
FROM
  heroes_information
LIMIT
  10;


# Check that information regarding powers were loaded correctly
SELECT
  *
FROM
  super_hero_power
LIMIT
  20;


#Rename columna HERP_NAMES to NAME for simplicity
ALTER TABLE super_hero_power
RENAME COLUMN HERO_NAMES TO NAME;


Q1: What are the top 5 most common superpowers among the superheroes?
#This question can be valuable for businesses in the entertainment and gaming industries. Knowing the most popular superpowers among superheroes can help game developers create engaging and exciting characters, storylines, and gameplay mechanics. Similarly, for movie or TV show producers, understanding popular superpowers can influence their decision-making in character development and plot creation.
#Importance: Identifying the most common superpowers can give businesses insights into what aspects of superhero characters resonate with audiences. This knowledge can inform product development, marketing strategies, and content creation to cater to popular trends and preferences.

SELECT superpower, COUNT(*) AS num_superheroes
FROM (
    SELECT name, 'Agility' AS superpower FROM super_hero_power WHERE Agility = 'True'
    UNION ALL
    SELECT name, 'Accelerated Healing' AS superpower FROM super_hero_power WHERE Accelerated_Healing = 'True'
    UNION ALL
    SELECT name, 'Lantern Power Ring' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Dimensional_Awareness' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Cold_Resistance' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Durability' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Stealth' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Energy_Absorption' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Flight' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Danger_Sense' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Underwater_breathing' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Marksmanship' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Weapons_Master' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Power_Augmentation' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Animal_Attributes' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Longevity' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Intelligence' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Super_Strength' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Cryokinesis' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Telepathy' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Energy_Armor' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Energy_Blasts' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Duplication' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Size_Changing' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Density_Control' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Stamina' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Astral_Travel' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Audio_Control' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Dexterity' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Omnitrix' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Super_Speed' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Possession' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Animal_Oriented_Powers' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'WeaponBased_Powers' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Electrokinesis' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Darkforce_Manipulation' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Death_Touch' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Teleportation' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Enhanced_Senses' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Telekinesis' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Energy_Beams' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Magic' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Hyperkinesis' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Jump' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Clairvoyance' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Dimensional_Travel' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Power_Sense' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Shapeshifting' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Peak_Human_Condition' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Immortality' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Camouflage' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Element_Control' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Phasing' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Astral_Projection' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Electrical_Transport' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Fire_Control' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Projection' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Summoning' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Enhanced_Memory' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Reflexes' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Invulnerability' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Energy_Constructs' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Force_Fields' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'SelfSustenance' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'AntiGravity' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Empathy' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Power_Nullifier' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Radiation_Control' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Psionic_Powers' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Elasticity' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Substance_Secretion' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Elemental_Transmogrification' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Technopath_and_Cyberpath' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Photographic_Reflexes' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Seismic_Power' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Animation' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Precognition' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Mind_Control' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Fire_Resistance' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Power_Absorption' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Enhanced_Hearing' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Nova_Force' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Insanity' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Hypnokinesis' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Animal_Control' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Natural_Armor' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Intangibility' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Enhanced_Sight' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Molecular_Manipulation' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Heat_Generation' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Adaptation' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Gliding' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Power_Suit' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Mind_Blast' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Probability_Manipulation' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Gravity_Control' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Regeneration' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Light_Control' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Echolocation' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Levitation' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Toxin_and_Disease_Control' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Banish' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Energy_Manipulation' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Heat_Resistance' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Natural_Weapons' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Time_Travel' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Enhanced_Smell' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Illusions' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Thirstokinesis' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Hair_Manipulation' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Illumination' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Omnipotent' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Cloaking' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Changing_Armor' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Power_Cosmic' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Biokinesis' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Water_Control' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Radiation_Immunity' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Vision_Telescopic' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Toxin_and_Disease_Resistance' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Spatial_Awareness' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Energy_Resistance' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Telepathy_Resistance' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Molecular_Combustion' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Omnilingualism' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Portal_Creation' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Magnetism' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Mind_Control_Resistance' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Plant_Control' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Sonar' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Sonic_Scream' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Time_Manipulation' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Enhanced_Touch' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Magic_Resistance' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Invisibility' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'SubMariner' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Radiation_Absorption' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Intuitive_aptitude' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Vision_Microscopic' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Melting' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Wind_Control' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Super_Breath' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Wallcrawling' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Vision_Night' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Vision_Infrared' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Grim_Reaping' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Matter_Absorption' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'The_Force' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Resurrection' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Terrakinesis' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Vision_Heat' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Vitakinesis' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Radar_Sense' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Qwardian_Power_Ring' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Weather_Control' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Vision_XRay' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Vision_Thermal' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Web_Creation' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Reality_Warping' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Odin_Force' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Symbiote_Costume' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Speed_Force' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Phoenix_Force' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Molecular_Dissipation' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Vision_Cryo' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Omnipresent' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
    UNION ALL
SELECT name, 'Omniscient' AS superpower FROM super_hero_power WHERE Lantern_Power_Ring = 'True'
) AS superpowers_unpivoted
GROUP BY superpower
ORDER BY num_superheroes DESC
LIMIT 5;


Q2: How many superheroes have more than one superpower?
#This question is useful for businesses in the entertainment, gaming, and comic book industries. Understanding the number of superheroes with multiple superpowers allows businesses to develop diverse and versatile characters for more engaging storytelling and gameplay experiences.
#Importance: By knowing the proportion of superheroes with multiple superpowers, businesses can tailor their content and marketing efforts to highlight the uniqueness of such characters. This can help attract fans interested in complex and powerful heroes.

SELECT heroes_information.name, COUNT(*) AS num_superpowers
    FROM heroes_information
        LEFT OUTER JOIN super_hero_power ON super_hero_power.name = heroes_information.name
        GROUP BY heroes_information.name
        HAVING COUNT(*) > 1;


Q3:Which superhero has the most number of superpowers?
#This question is relevant for the entertainment and comic book industries. Identifying the superhero with the most superpowers can be a compelling marketing point and attract attention to a particular character or storyline.
#Importance: Knowing the superhero with the most superpowers can influence product development, cross-promotions, and collaborations. Businesses can leverage this information to create special editions, merchandise, and events centered around the most powerful superhero.

SELECT heroes_information.name, COUNT(*) AS num_superpowers
    FROM heroes_information
        LEFT OUTER JOIN super_hero_power ON super_hero_power.name = heroes_information.name
        GROUP BY heroes_information.name
        ORDER BY num_superpowers DESC
        LIMIT 5;


Q4: Which superheroes have names starting with a certain letter and possess a particular superpower?
#This question can be relevant for businesses in the entertainment, gaming, and marketing industries. By identifying superheroes with specific names and superpowers, businesses can create personalized experiences for their audience.
#Importance: Understanding the combination of superhero names and superpowers starting with a certain letter can lead to targeted marketing campaigns and personalized recommendations. This can enhance customer engagement and satisfaction by offering content and products tailored to individual preferences.

SELECT heroes_information.name,
        CASE
            WHEN super_hero_power.super_strength = 'True' THEN 'Super Strength'
        END AS superpower    
    FROM heroes_information
        LEFT OUTER JOIN super_hero_power ON super_hero_power.name = heroes_information.name
        WHERE heroes_information.name LIKE 'H%'
            AND super_strength = 'True';


Q5: Can you provide a list of superheroes and their respective superpowers' names?
#This question is applicable to businesses in the entertainment, gaming, and comic book industries. Having a comprehensive list of superheroes and their superpowers enables businesses to manage character databases, support creative teams, and provide accurate information to fans and consumers.
#Importance: A well-organized list of superheroes and their superpowers facilitates efficient content creation, licensing, and merchandising efforts. It also enhances the overall user experience by offering accurate and up-to-date information to fans.

SELECT heroes_information.name,
    COALESCE(
    CASE
        WHEN super_hero_power.Agility = 'True' THEN 'Agility'
        WHEN super_hero_power.Accelerated_Healing = 'True' THEN 'Accelerated Healing'
        WHEN super_hero_power.Lantern_Power_Ring = 'True' THEN 'Lantern Power Ring'
        WHEN super_hero_power.Dimensional_Awareness = 'True' THEN 'Dimensional Awareness'
        WHEN super_hero_power.Cold_Resistance = 'True' THEN 'Cold Resistance'
        WHEN super_hero_power.Durability = 'True' THEN 'Durability'
        WHEN super_hero_power.Stealth = 'True' THEN 'Stealth'
        WHEN super_hero_power.Energy_Absorption = 'True' THEN 'Energy Absorption'
        WHEN super_hero_power.Flight = 'True' THEN 'Flight'
        WHEN super_hero_power.Danger_Sense = 'True' THEN 'Danger Sense'
        WHEN super_hero_power.Underwater_breathing = 'True' THEN 'Underwater breathing'
        WHEN super_hero_power.Marksmanship = 'True' THEN 'Marksmanship'
        WHEN super_hero_power.Weapons_Master = 'True' THEN 'Weapons Master'
        WHEN super_hero_power.Power_Augmentation = 'True' THEN 'Power Augmentation'
        WHEN super_hero_power.Animal_Attributes = 'True' THEN 'Animal Attributes'
        WHEN super_hero_power.Longevity  = 'True' THEN 'Longevity'
        WHEN super_hero_power.Intelligence = 'True' THEN 'Intelligence'
        WHEN super_hero_power.Super_Strength = 'True' THEN 'Super Strength'
        WHEN super_hero_power.Cryokinesis = 'True' THEN 'Cryokinesis'
        WHEN super_hero_power.Telepathy = 'True' THEN 'Telepathy'
        WHEN super_hero_power.Energy_Armor = 'True' THEN 'Energy Armor'
        WHEN super_hero_power.Energy_Blasts = 'True' THEN 'Energy Blasts'
        WHEN super_hero_power.Duplication  = 'True' THEN 'Duplication'
        WHEN super_hero_power.Size_Changing = 'True' THEN 'Size Changing'
        WHEN super_hero_power.Density_Control = 'True' THEN 'Density Control'
        WHEN super_hero_power.Stamina = 'True' THEN 'Stamina'
        WHEN super_hero_power.Astral_Travel = 'True' THEN 'Astral Travel'
        WHEN super_hero_power.Audio_Control = 'True' THEN 'Audio Control'
        WHEN super_hero_power.Dexterity = 'True' THEN 'Dexterity'
        WHEN super_hero_power.Omnitrix = 'True' THEN 'Omnitrix'
        WHEN super_hero_power.Super_Speed = 'True' THEN 'Super Speed'
        WHEN super_hero_power.Possession = 'True' THEN 'Possession'
        WHEN super_hero_power.Animal_Oriented_Powers = 'True' THEN 'Animal Oriented Powers'
        WHEN super_hero_power.WeaponBased_Powers = 'True' THEN 'Weapon-Based Powers'
        WHEN super_hero_power.Electrokinesis = 'True' THEN 'Electrokinesis'
        WHEN super_hero_power.Darkforce_Manipulation = 'True' THEN 'Darkforce Manipulation'
        WHEN super_hero_power.Death_Touch = 'True' THEN 'Death Touch'
        WHEN super_hero_power.Teleportation = 'True' THEN 'Teleportation'
        WHEN super_hero_power.Enhanced_Senses = 'True' THEN 'Enhanced Senses'
        WHEN super_hero_power.Telekinesis = 'True' THEN 'Telekinesis'
        WHEN super_hero_power.Energy_Beams = 'True' THEN 'Energy Beams'
        WHEN super_hero_power.Magic = 'True' THEN 'Magic'
        WHEN super_hero_power.Hyperkinesis = 'True' THEN 'Hyperkinesis'
        WHEN super_hero_power.Jump = 'True' THEN 'Jump'
        WHEN super_hero_power.Clairvoyance = 'True' THEN 'Clairvoyance'
        WHEN super_hero_power.Dimensional_Travel = 'True' THEN 'Dimensional Travel'
        WHEN super_hero_power.Power_Sense = 'True' THEN 'Power Sense'
        WHEN super_hero_power.Shapeshifting = 'True' THEN 'Shapeshifting'
        WHEN super_hero_power.Peak_Human_Condition = 'True' THEN 'Peak Human Condition'
        WHEN super_hero_power.Immortality = 'True' THEN 'Immortality'
        WHEN super_hero_power.Camouflage = 'True' THEN 'Camouflage'
        WHEN super_hero_power.Element_Control = 'True' THEN 'Element Control'
        WHEN super_hero_power.Phasing = 'True' THEN 'Phasing'
        WHEN super_hero_power.Astral_Projection = 'True' THEN 'Astral Projection'
        WHEN super_hero_power.Electrical_Transport = 'True' THEN 'Electrical Transport'
        WHEN super_hero_power.Fire_Control = 'True' THEN 'Fire Control'
        WHEN super_hero_power.Projection = 'True' THEN 'Projection'
        WHEN super_hero_power.Summoning = 'True' THEN 'Summoning'
        WHEN super_hero_power.Enhanced_Memory = 'True' THEN 'Enhanced Memory'
        WHEN super_hero_power.Reflexes = 'True' THEN 'Reflexes'
        WHEN super_hero_power.Invulnerability = 'True' THEN 'Invulnerability'
        WHEN super_hero_power.Energy_Constructs = 'True' THEN 'Energy Constructs'
        WHEN super_hero_power.Force_Fields = 'True' THEN 'Force Fields'
        WHEN super_hero_power.SelfSustenance = 'True' THEN 'Self-Sustenance'
        WHEN super_hero_power.AntiGravity = 'True' THEN 'Anti-Gravity'
        WHEN super_hero_power.Empathy = 'True' THEN 'Empathy'
        WHEN super_hero_power.Power_Nullifier = 'True' THEN 'Power Nullifier'
        WHEN super_hero_power.Radiation_Control = 'True' THEN 'Radiation Control'
        WHEN super_hero_power.Psionic_Powers = 'True' THEN 'Psionic Powers'
        WHEN super_hero_power.Elasticity = 'True' THEN 'Elasticity'
        WHEN super_hero_power.Substance_Secretion = 'True' THEN 'Substance Secretion'
        WHEN super_hero_power.Elemental_Transmogrification = 'True' THEN 'Elemental Transmogrification'
        WHEN super_hero_power.Technopath_and_Cyberpath = 'True' THEN 'Technopath/Cyberpath'
        WHEN super_hero_power.Photographic_Reflexes = 'True' THEN 'Photographic Reflexes'
        WHEN super_hero_power.Seismic_Power = 'True' THEN 'Seismic Power'
        WHEN super_hero_power.Animation = 'True' THEN 'Animation'
        WHEN super_hero_power.Precognition = 'True' THEN 'Precognition'
        WHEN super_hero_power.Mind_Control = 'True' THEN 'Mind Control'
        WHEN super_hero_power.Fire_Resistance = 'True' THEN 'Fire Resistance'
        WHEN super_hero_power.Power_Absorption = 'True' THEN 'Power Absorption'
        WHEN super_hero_power.Enhanced_Hearing = 'True' THEN 'Enhanced Hearing'
        WHEN super_hero_power.Nova_Force = 'True' THEN 'Nova Force'
        WHEN super_hero_power.Insanity = 'True' THEN 'Insanity'
        WHEN super_hero_power.Hypnokinesis = 'True' THEN 'Hypnokinesis'
        WHEN super_hero_power.Animal_Control = 'True' THEN 'Animal Control'
        WHEN super_hero_power.Natural_Armor = 'True' THEN 'Natural Armor'
        WHEN super_hero_power.Intangibility = 'True' THEN 'Intangibility'
        WHEN super_hero_power.Enhanced_Sight = 'True' THEN 'Enhanced Sight'
        WHEN super_hero_power.Molecular_Manipulation = 'True' THEN 'Molecular Manipulation'
        WHEN super_hero_power.Heat_Generation = 'True' THEN 'Heat Generation'
        WHEN super_hero_power.Adaptation = 'True' THEN 'Adaptation'
        WHEN super_hero_power.Gliding = 'True' THEN 'Gliding'
        WHEN super_hero_power.Power_Suit = 'True' THEN 'Power Suit'
        WHEN super_hero_power.Mind_Blast = 'True' THEN 'Mind Blast'
        WHEN super_hero_power.Probability_Manipulation = 'True' THEN 'Probability Manipulation'
        WHEN super_hero_power.Gravity_Control = 'True' THEN 'Gravity Control'
        WHEN super_hero_power.Regeneration = 'True' THEN 'Regeneration'
        WHEN super_hero_power.Light_Control = 'True' THEN 'Light Control'
        WHEN super_hero_power.Echolocation = 'True' THEN 'Echolocation'
        WHEN super_hero_power.Levitation = 'True' THEN 'Levitation'
        WHEN super_hero_power.Toxin_and_Disease_Control = 'True' THEN 'Toxin and Disease Control'
        WHEN super_hero_power.Banish = 'True' THEN 'Banish'
        WHEN super_hero_power.Energy_Manipulation = 'True' THEN 'Energy Manipulation'
        WHEN super_hero_power.Heat_Resistance = 'True' THEN 'Heat Resistance'
        WHEN super_hero_power.Natural_Weapons = 'True' THEN 'Natural Weapons'
        WHEN super_hero_power.Time_Travel = 'True' THEN 'Time Travel'
        WHEN super_hero_power.Enhanced_Smell = 'True' THEN 'Enhanced Smell'
        WHEN super_hero_power.Illusions = 'True' THEN 'Illusions'
        WHEN super_hero_power.Thirstokinesis = 'True' THEN 'Thirstokinesis'
        WHEN super_hero_power.Hair_Manipulation = 'True' THEN 'Hair Manipulation'
        WHEN super_hero_power.Illumination = 'True' THEN 'Illumination'
        WHEN super_hero_power.Omnipotent = 'True' THEN 'Omnipotent'
        WHEN super_hero_power.Cloaking = 'True' THEN 'Cloaking'
        WHEN super_hero_power.Changing_Armor = 'True' THEN 'Changing Armor'
        WHEN super_hero_power.Power_Cosmic = 'True' THEN 'Power Cosmic'
        WHEN super_hero_power.Biokinesis = 'True' THEN 'Biokinesis'
        WHEN super_hero_power.Water_Control = 'True' THEN 'Water Control'
        WHEN super_hero_power.Radiation_Immunity = 'True' THEN 'Radiation Immunity'
        WHEN super_hero_power.Vision_Telescopic = 'True' THEN 'Vision: Telescopic'
        WHEN super_hero_power.Toxin_and_Disease_Resistance = 'True' THEN 'Toxin and Disease Resistance'
        WHEN super_hero_power.Spatial_Awareness = 'True' THEN 'Spatial Awareness'
        WHEN super_hero_power.Energy_Resistance = 'True' THEN 'Energy Resistance'
        WHEN super_hero_power.Telepathy_Resistance = 'True' THEN 'Telepathy Resistance'
        WHEN super_hero_power.Molecular_Combustion = 'True' THEN 'Molecular Combustion'
        WHEN super_hero_power.Omnilingualism = 'True' THEN 'Omnilingualism'
        WHEN super_hero_power.Portal_Creation = 'True' THEN 'Portal Creation'
        WHEN super_hero_power.Magnetism = 'True' THEN 'Magnetism'
        WHEN super_hero_power.Mind_Control_Resistance = 'True' THEN 'Mind Control Resistance'
        WHEN super_hero_power.Plant_Control = 'True' THEN 'Plant Control'
        WHEN super_hero_power.Sonar = 'True' THEN 'Sonar'
        WHEN super_hero_power.Sonic_Scream = 'True' THEN 'Sonic Scream'
        WHEN super_hero_power.Time_Manipulation = 'True' THEN 'Time Manipulation'
        WHEN super_hero_power.Enhanced_Touch = 'True' THEN 'Enhanced Touch'
        WHEN super_hero_power.Magic_Resistance = 'True' THEN 'Magic Resistance'
        WHEN super_hero_power.Invisibility = 'True' THEN 'Invisibility'
        WHEN super_hero_power.SubMariner = 'True' THEN 'Sub-Mariner'
        WHEN super_hero_power.Radiation_Absorption = 'True' THEN 'Radiation Absorption'
        WHEN super_hero_power.Intuitive_aptitude = 'True' THEN 'Intuitive aptitude'
        WHEN super_hero_power.Vision_Microscopic = 'True' THEN 'Vision: Microscopic'
        WHEN super_hero_power.Melting = 'True' THEN 'Melting'
        WHEN super_hero_power.Wind_Control = 'True' THEN 'Wind Control'
        WHEN super_hero_power.Super_Breath = 'True' THEN 'Super Breath'
        WHEN super_hero_power.Wallcrawling = 'True' THEN 'Wallcrawling'
        WHEN super_hero_power.Vision_Night = 'True' THEN 'Vision: Night'
        WHEN super_hero_power.Vision_Infrared = 'True' THEN 'Vision: Infrared'
        WHEN super_hero_power.Grim_Reaping = 'True' THEN 'Grim Reaping'
        WHEN super_hero_power.Matter_Absorption = 'True' THEN 'Matter Absorption'
        WHEN super_hero_power.The_Force = 'True' THEN 'The Force'
        WHEN super_hero_power.Resurrection = 'True' THEN 'Resurrection'
        WHEN super_hero_power.Terrakinesis = 'True' THEN 'Terrakinesis'
        WHEN super_hero_power.Vision_Heat = 'True' THEN 'Vision: Heat'
        WHEN super_hero_power.Vitakinesis = 'True' THEN 'Vitakinesis'
        WHEN super_hero_power.Radar_Sense = 'True' THEN 'Radar Sense'
        WHEN super_hero_power.Qwardian_Power_Ring = 'True' THEN 'Qwardian Power Ring'
        WHEN super_hero_power.Weather_Control = 'True' THEN 'Weather Control'
        WHEN super_hero_power.Vision_XRay = 'True' THEN 'Vision: X-Ray'
        WHEN super_hero_power.Vision_Thermal = 'True' THEN 'Vision: Thermal'
        WHEN super_hero_power.Web_Creation = 'True' THEN 'Web Creation'
        WHEN super_hero_power.Reality_Warping = 'True' THEN 'Reality Warping'
        WHEN super_hero_power.Odin_Force = 'True' THEN 'Odin Force'
        WHEN super_hero_power.Symbiote_Costume = 'True' THEN 'Symbiote Costume'
        WHEN super_hero_power.Speed_Force = 'True' THEN 'Speed Force'
        WHEN super_hero_power.Phoenix_Force = 'True' THEN 'Phoenix Force'
        WHEN super_hero_power.Molecular_Dissipation = 'True' THEN 'MolecularDissipation'
        WHEN super_hero_power.Vision_Cryo = 'True' THEN 'Vision: Cryo'
        WHEN super_hero_power.Omnipresent = 'True' THEN 'Omnipresent'
        WHEN super_hero_power.Omniscient = 'True' THEN 'Omniscient'
    ELSE NULL
    END,
        'No Power')
    AS superpower
FROM heroes_information
        LEFT OUTER JOIN super_hero_power
        ON super_hero_power.name = heroes_information.name
ORDER BY super_power ASC, heroes_information.name ASC;



