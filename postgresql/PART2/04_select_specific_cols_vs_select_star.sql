--select * returns every cols
--select specific cols is going to return the cols that i want

/* SELECT * FROM products; */

SELECT name, category, price, stock FROM products;

--AS creates an alias for the output of that column name
-- makes the column name easier to read
SELECT name AS product_name, price AS selling_price, stock AS availability FROM products;
