CREATE TABLE items(id INTEGER, name TEXT, quantity INTEGER, category TEXT, price NUMERIC);

INSERT INTO items VALUES (1, "chair", 3, "furniture", 200.00);
INSERT INTO items VALUES (2, "cupboard", 2, "furniture", 500.00);
INSERT INTO items VALUES (3, "dish", 8, "serveware", 20.00);
INSERT INTO items VALUES (4, "glass", 5, "serveware", 15.00);
INSERT INTO items VALUES (5, "napkin", 20, "textile", 25.00);
INSERT INTO items VALUES (1, "vase", 6, "serveware", 200.00);

SELECT * FROM items order by price;
SELECT category, SUM(quantity) FROM items GROUP BY category;
SELECT * FROM items WHERE quantity < 5;
