/* Put your data in here and query it! */
CREATE TABLE cities (id INTEGER, name TEXT, area_km2 INTEGER, population INTEGER, country TEXT);

INSERT INTO cities VALUES(1, "Beijing", 16410, 21705000, "China");
INSERT INTO cities VALUES(2, "Shanghai", 6340, 24152700, "China");
INSERT INTO cities VALUES(3, "Hongkong", 1104, 7240000, "China");
INSERT INTO cities VALUES(4, "Seattle", 370, 651300, "USA");
INSERT INTO cities VALUES(5, "Heidelberg", 109, 150000, "Germany");
INSERT INTO cities VALUES(6, "Koln", 405, 1007000, "Germany");
INSERT INTO cities VALUES(7, "NYC", 789, 8491000, "USA");
INSERT INTO cities VALUES(8, "San Francisco", 600, 852469, "USA");
INSERT INTO cities VALUES(9, "Munich", 310, 1300000, "Germany");
INSERT INTO cities VALUES(10, "Buenos Aires", 203, 1995000, "Argentina");
INSERT INTO cities VALUES(11, "Oslo", 454, 560484, "Norway");
INSERT INTO cities VALUES(12, "Tokyo", 2188, 13507300, "Japan");
INSERT INTO cities VALUES(13, "Nagoya", 326, 2284000, "Japan");
INSERT INTO cities VALUES(14, "Vancouver", 115, 600000, "Canada");
INSERT INTO cities VALUES(15, "Ottawa", 2778, 1320000, "Canada");
INSERT INTO cities VALUES(16, "Montreal", 365, 1669237, "Canada");
INSERT INTO cities VALUES(17, "London", 1577, 8000000, "England");
INSERT INTO cities VALUES(18, "Manchester", 115, 514400, "England");
INSERT INTO cities VALUES(19, "Amsterdam", 219, 1108297, "Holland");
INSERT INTO cities VALUES(20, "Edinburgh", 260, 440000, "England");

SELECT * FROM cities;

SELECT country, AVG(area_km2) FROM cities WHERE country = "China";
SELECT name, MAX(population) FROM cities;
SELECT name, MIN(population) FROM cities;
SELECT country, AVG(population) FROM cities
GROUP BY country
HAVING AVG(population) > 600000
ORDER BY AVG(population);

SELECT name,
CASE
    WHEN population > 5000000 THEN "Large city"
    WHEN population > 500000 THEN "Mediun city"
    ELSE "Small city"
END AS "city size"
From cities;
    
SELECT name, population FROM cities WHERE area_km2 > 400 AND country != "USA";

