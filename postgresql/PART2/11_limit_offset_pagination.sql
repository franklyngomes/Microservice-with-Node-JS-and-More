-- limit - How many rows you want to return 
-- offset -> How many rows you want to skip

--SELECT name, price FROM products ORDER BY price ASC LIMIT 5;

/* SELECT name, price FROM products ORDER BY name ASC LIMIT 5 OFFSET 0; */

SELECT name, price FROM products ORDER BY name DESC LIMIT 5 OFFSET 5;