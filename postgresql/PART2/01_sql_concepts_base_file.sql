CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
  if UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL,
  category TEXT NOT NULL,
  price NUMERIC(10, 2) NOT NULL CHECK (price >= 0),
  stock INTEGER NOT NULL DEFAULT 0 CHECK (stock >= 0),
  is_active BOOLEAN NOT NULL DEFAULT true,
  sku TEXT UNIQUE,
  description TEXT,
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

INSERT INTO products (name, category, price, stock, is_active, sku, description) VALUES 
('Wireless Ergonomic Mouse', 'Electronics', 49.99, 120, true, 'ELEC-MSE-001', 'Rechargeable optical mouse with 2.4GHz connectivity.'),
  ('Mechanical Gaming Keyboard', 'Electronics', 89.50, 45, true, 'ELEC-KBD-002', 'RGB backlit mechanical keyboard with tactile blue switches.'),
  ('Organic Arabica Coffee Beans (1kg)', 'Groceries', 24.00, 200, true, 'GROC-COF-101', 'Medium roast whole bean coffee sourced from Colombia.'),
  ('Stainless Steel Water Bottle', 'Home & Kitchen', 18.75, 0, false, 'HOME-BTL-301', '500ml double-wall insulated water bottle.'),
  ('Noise-Canceling Headphones', 'Electronics', 199.99, 15, true, 'ELEC-HDP-003', 'Over-ear Bluetooth headphones with active noise cancellation.');

SELECT * FROM products