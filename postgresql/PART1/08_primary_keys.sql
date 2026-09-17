DROP TABLE IF EXISTS basics.sales;
CREATE TABLE basics.sales (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  price NUMERIC(10, 2) NOT NULL DEFAULT 0,
  created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.sales (title, price) VALUES 
('sale 1', 200),
('sale 2', 500),
('sale 3', 600),
('sale 4', 100);

/* SELECT * FROM basics.sales; */
/* SELECT * FROM basics.sales WHERE id = 2; */

--ERROR:  duplicate key value violates unique constraint "sales_pkey"
INSERT INTO basics.sales (id, title, price) VALUES
(1, 'duplicated id 1', 400);