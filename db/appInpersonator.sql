/* What does the app's SQL look like? */

CREATE TABLE bilibili (id INTEGER, name TEXT, date TEXT, comment INTEGER);

INSERT INTO bilibili VALUES(1, "Frasier", "2014-09-02", 1557);
INSERT INTO bilibili VALUES(2, "The Outs", "2015-04-20", 1772);
INSERT INTO bilibili VALUES(3, "Black Books", "2013-08-06", 24342);
INSERT INTO bilibili VALUES(4, "Roommate2", "2015-11-09", 22810);

SELECT * FROM bilibili;

UPDATE bilibili SET  date = "2015-12-09" WHERE id = 4;

SELECT * FROM bilibili;

DELETE FROM bilibili WHERE id = 4;
SELECT * FROM bilibili;

