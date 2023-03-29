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

CREATE TABLE owners(
  id               INT GENERATED ALWAYS AS IDENTITY,
  full_name        VARCHAR(200),
  age              INT,
  PRIMARY KEY (id)
);

CREATE TABLE species(
  id               INT GENERATED ALWAYS AS IDENTITY,
  name             VARCHAR(200),
  PRIMARY KEY (id)     
);

ALTER TABLE animals ADD id INT NOT NULL CONSTRAINT my_table_default_constraint GENERATED ALWAYS AS IDENTITY;
ALTER TABLE animals
ADD PRIMARY KEY (id);

ALTER TABLE animals                                                                                                                                                        
ADD species_id INT;
ALTER TABLE animals 
   ADD FOREIGN KEY (species_id) REFERENCES species (id);

ALTER TABLE animals 
ADD owner_id INT;
ALTER TABLE animals 
   ADD FOREIGN KEY (owner_id) REFERENCES owners (id);





