/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
  id               INT,
  name             TEXT,
  date_of_birth    date,
  escape_attempts  INT,
  neutered         BOOLEAN,
  weight_kg        DECIMAL 
);

ALTER TABLE animals
ADD species VARCHAR(50);


