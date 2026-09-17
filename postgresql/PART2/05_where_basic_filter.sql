-- /products?category=electronics
--WHERE clause is used to filter records in a database table
/* SELECT * FROM products WHERE category = 'Electronics' */

SELECT name, is_active FROM products WHERE is_active = False;