-- This file hosts information for our database

DROP TABLE IF EXISTS sandwich;

CREATE TABLE sandwich (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  description TEXT
);

INSERT INTO sandwich (title, description) VALUES ('Ham', 'Tasty');
INSERT INTO sandwich (title, description) VALUES ('Jam', 'Hasty');
INSERT INTO sandwich (title, description) VALUES ('Spam', 'Pasty');
INSERT INTO sandwich (title, description) VALUES ('Clam', 'Nasty');
INSERT INTO sandwich (title, description) VALUES ('Lamb', 'Fasty');
