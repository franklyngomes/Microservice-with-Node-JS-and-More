--AND -> every condition must be true
--OR -> atlease one condition must be true
--NOT -> reverse/exclude a condition

--products where it is electronics but price  > 1000
SELECT name, category FROM products WHERE category = 'Electronics' AND price > 100;

--OR 
SELECT name, category FROM products WHERE category = 'Electronics' OR category = 'Groceries';

--NOT
SELECT name, category FROM products WHERE NOT category = 'Electronics';