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

/* Create new table */

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

/* Update existing table */

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


/* Create new data */

CREATE TABLE vets(
  id                 INT GENERATED ALWAYS AS IDENTITY,
  name               VARCHAR,
  age                INT,
  date_of_graduation date,
  PRIMARY KEY (id) 
);

CREATE TABLE specializations(
  species_id INT,
  vet_id INT,
  FOREIGN KEY(species_id) REFERENCES species(id) ON DELETE CASCADE, 
  FOREIGN KEY(vet_id) REFERENCES vets(id) ON DELETE CASCADE
);

CREATE TABLE visits(
  animals_id INT,
  vet_id INT,
  date_of_visit date,
  FOREIGN KEY(animals_id) REFERENCES animals(id) ON DELETE CASCADE, 
  FOREIGN KEY(vet_id) REFERENCES vets(id) ON DELETE CASCADE
);




