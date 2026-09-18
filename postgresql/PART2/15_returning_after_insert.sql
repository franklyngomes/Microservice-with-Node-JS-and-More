--returning usually returns abck the rows immediately after INSERT, UPDATE, DELETE

/* INSERT INTO products (name, category, price, stock, sku, description) VALUES ('New product to be deleted', 'Electronics', 345.45, 45, 'ELEC-NEW-013', 'New product desc') RETURNING products.if, name, category, price, stock, created_at; */

UPDATE products SET name = 'New product to be inserted' WHERE sku = 'ELEC-NEW-013' RETURNING products.if, name, category, price, stock, created_at;