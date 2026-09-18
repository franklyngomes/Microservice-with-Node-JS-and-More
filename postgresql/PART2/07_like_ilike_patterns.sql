--like - case sensitive pattern match
--ilike - case insensitive pattern match
-- % means any no of characters
-- _ means exactly one character

--Problem - Find products where name starts with 'Wireless'
/* SELECT name, price FROM products WHERE name LIKE 'Wireless%' */

--Problem - Find products where name contains 'Desk'
/* SELECT name, price FROM products WHERE name ILIKE '%gaming%'; */

SELECT name, price, description FROM products WHERE name ILIKE '%bottle%' AND description ILIKE '%bottle%';

