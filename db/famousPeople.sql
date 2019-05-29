/* Create table about the people and what they do here */
/* singers*/
CREATE TABLE singers (id INTEGER PRIMARY KEY, name TEXT, age INTEGER, country TEXT);

INSERT INTO singers VALUES (1, "Stefanie Sun", 38, "Singapore");
INSERT INTO singers VALUES (2, "Mavis Fan", 39, "China");
INSERT INTO singers VALUES (3, "John Mayer", 39, "USA");
INSERT INTO singers VALUES (4, "Katy Perry", 32, "USA");

/* songs */
CREATE TABLE songs (id INTEGER PRIMARY KEY, name TEXT, singer_id INTEGER, album_id INTEGER);
INSERT INTO songs VALUES (1, "The One That Got Away", 4, 2);
INSERT INTO songs VALUES (2, "Roar", 4, 1);
INSERT INTO songs VALUES (3, "Darling", 2, 6);
INSERT INTO songs VALUES (4, "Tell Her", 2, 6);
INSERT INTO songs VALUES (5, "Wildfire", 3, 5);
INSERT INTO songs VALUES (6, "The Moment", 1, 4);
INSERT INTO songs VALUES (7, "Someone", 1, 4);
INSERT INTO songs VALUES (8, "Leave Me Alone", 1, 3);
INSERT INTO songs VALUES (9, "天黑黑", 1, 3);

/*Albums*/
CREATE TABLE albums (id INTEGER PRIMARY KEY, name TEXT, release_year TEXT, singer_id INTEGER);
INSERT INTO albums VALUES (1, "Roar",2013 , 4);
INSERT INTO albums VALUES (2, "Teenage Dream",2012 , 4);
INSERT INTO albums VALUES (3, "Yanzi",2000 , 1);
INSERT INTO albums VALUES (4, "My Story, Your Song",2006 , 1);
INSERT INTO albums VALUES (5, "Paradise Valley",2009 , 3);
INSERT INTO albums VALUES (6, "Darling", 1998, 2);

SELECT name, country FROM singers;

SELECT singers.name as singers, albums.name as albums, albums.release_year
    From singers
    LEFT OUTER JOIN albums
    ON singers.id = albums.singer_id;
    
SELECT singers.name as singers, songs.name as songs, albums.name as albums
    FROM songs
    LEFT OUTER JOIN singers
    ON singers.id = songs.singer_id
    LEFT OUTER JOIN albums
    ON songs.album_id = albums.id;
