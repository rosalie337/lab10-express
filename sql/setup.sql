DROP TABLE IF EXISTS recipes;

CREATE TABLE recipes (
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  name TEXT NOT NULL,
  ingredients TEXT [],
  directions TEXT[]
);

CREATE TABLE logs (
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  dateOfEvent DATE NOT NULL,
  notes TEXT, 
  rating decimal(2,1) CONSTRAINT rating CHECK (rating >= 0 AND rating <= 5),
  recipeId BIGINT NOT NULL REFERENCES recipes(id)
);
