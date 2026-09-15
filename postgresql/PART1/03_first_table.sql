DROP TABLE IF EXISTS basics.students;

CREATE TABLE basics.students(
  --SERIAL -> creates an auto incrementing integer
  --PRIMARY KEY -> Simply means this col uniquely identifies each row
  id SERIAL PRIMARY KEY,

  -- TEXT-> string data
  -- NOT NULL -> means this col is required
  name TEXT NOT NULL,
  email TEXT NOT NULL UNIQUE,
  age INTEGER CHECK (age >= 18),
  --TIMESTAMP -> stores date and time format
  --DEFAULT -> means if you dont give any value it will take by default
  created_at TIMESTAMP DEFAULT NOW()
);

--Insert some data

INSERT INTO basics.students (name, email, age) VALUES
  ('Franklyn', 'franklyngomes15@gmail.com', 28),
  ('John', 'john@gmail.com', 26),
  ('Kaycee', 'kaycee@gmail.com', 29),
  ('Beth', 'beth@gmail.com', 28),
  ('Rip', 'rip@gmail.com', 28);