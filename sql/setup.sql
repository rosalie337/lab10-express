DROP TABLE IF EXISTS recipes;
-- DROP TABLE IF EXISTS logs;

CREATE TABLE recipes (
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  name TEXT NOT NULL,
  directions TEXT[]
);

-- CREATE TABLE logs (
--   id BIGINT GENERATED ALWAYS AS IDENTITY,
--   date_of_event DATE NOT NULL,
--   notes TEXT, 
--   rating decimal(2,1) CONSTRAINT rating CHECK (rating >= 0 AND rating <= 5),
--   recipe_id BIGINT NOT NULL REFERENCES recipes(id)
-- );
