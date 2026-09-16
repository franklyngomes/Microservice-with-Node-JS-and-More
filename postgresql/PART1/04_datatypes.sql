DROP TABLE IF EXISTS basics.products_basics;

CREATE TABLE basics.products_basics(
  id SERIAL PRIMARY KEY,
  --string -> max length of 100 chars
  name VARCHAR(100) NOT NULL,
  description TEXT,
  stock INTEGER DEFAULT 0,
  --store larger whole number than INTEGER
  total_views BIGINT DEFAULT 0,
  --exact decimal values
  --10 means total digits
  --2 means digits after the decimal point
  price NUMERIC(10, 2),
  is_active BOOLEAN DEFAULT true
);

--queries
INSERT INTO basics.products_basics (name, description, stock, total_views, price, is_active) VALUES (
  'product 1', 'product desc', 100, 1200, 2455.99, true
);
SELECT * FROM basics.products_basics;
SELECT * FROM basics.products_basics WHERE is_active;