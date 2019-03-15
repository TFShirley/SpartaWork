DROP TABLE IF EXISTS sandwich;

CREATE TABLE sandwich (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  description TEXT
);

INSERT INTO sandwich (title, description) VALUES ('Ham', 'description 1');
INSERT INTO sandwich (title, description) VALUES ('Jam', 'description 2');
INSERT INTO sandwich (title, description) VALUES ('Spam', 'description 3');
INSERT INTO sandwich (title, description) VALUES ('Clam', 'description 4');
INSERT INTO sandwich (title, description) VALUES ('Lamb', 'description 5');
