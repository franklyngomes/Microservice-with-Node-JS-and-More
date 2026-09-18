-- IN -> value must match atleast one item from the list
-- NOT IN -> value must not match any item from the list
-- BETWEEN -> value must be between a range

/* SELECT name, category, price FROM products WHERE category IN ('Electronics', 'Groceries') */

/* SELECT name, category, price FROM products WHERE category NOT IN ('Electronics', 'Groceries') */

SELECT name, category, price FROM products WHERE price BETWEEN 30 AND 100