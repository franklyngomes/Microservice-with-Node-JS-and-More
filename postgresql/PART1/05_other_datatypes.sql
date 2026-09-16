DROP TABLE IF EXISTS basics.app_events;

CREATE TABLE basics.app_events(
  --UUID - 
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  event_name TEXT NOT NULL,
  --JSONB -> Type for JSON type data
  metadata JSONB DEFAULT '{}'::jsonb,
  created_at TIMESTAMP DEFAULT NOW()
);
INSERT INTO basics.app_events (event_name, metadata) VALUES (
  'sign_up',
  '{"browser" : "chrome"}'
),
(
  'sign_in',
  '{"username" : "Franklyn"}'
);

SELECT * FROM basics.app_events;
--The ->> operator extracts the value of the browser key from that JSON object and returns it as plain text.
--The ? operator is a JSONB operator that checks if a specific key exists.
SELECT  event_name, metadata ->> 'browser' AS browser FROM basics.app_events WHERE metadata ? 'browser';