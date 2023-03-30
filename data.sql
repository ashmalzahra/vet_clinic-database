/* Populate database with sample data. */

INSERT INTO animals ( name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Agumon', '2020-02-03', 10.23, TRUE, 0);
INSERT INTO animals ( name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Gabumon', '2018-11-15', 8, TRUE, 2);
INSERT INTO animals ( name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Pikachu', '2021-01-07', 15.04, FALSE, 1);
INSERT INTO animals ( name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Devimon', '2017-05-12', 11, TRUE, 5);

/* Insert additional data. */

INSERT INTO animals ( name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Charmander', '2020-02-08', -11, FALSE, 0);
INSERT INTO animals ( name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Plantmon', '2021-11-15', -5.7, TRUE, 2);
INSERT INTO animals ( name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Squirtle', '1993-04-02', -12.13, FALSE, 3);
INSERT INTO animals ( name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Angemon', '2005-06-12', -45, TRUE, 1);
INSERT INTO animals ( name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Boarmon', '2005-06-07', 20.4, TRUE, 7);
INSERT INTO animals ( name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Blossom', '1998-10-13', 17, TRUE, 3);
INSERT INTO animals ( name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Ditto', '2022-05-14', 22, TRUE, 4);

/* Insert new table data. */

INSERT INTO owners ( full_name, age) VALUES ('Sam Smith', 34);
INSERT INTO owners ( full_name, age) VALUES ('Jennifer Orwell', 19);
INSERT INTO owners ( full_name, age) VALUES ('Bob', 45);
INSERT INTO owners ( full_name, age) VALUES ('Melody Pond', 77);
INSERT INTO owners ( full_name, age) VALUES ('Dean Winchester', 14);
INSERT INTO owners ( full_name, age) VALUES ('Jodie Whittaker', 38);

INSERT INTO species (name) VALUES ('Pokemon');
INSERT INTO species (name) VALUES ('Digimon');

/* Modify existing data. */

UPDATE animals                                                                                                                                                                 
SET species_id = 2       
WHERE name LIKE '%mon%';

UPDATE animals 
SET species_id = 1
WHERE species_id IS NULL;

UPDATE animals
set owner_id = 1
where name = 'Agumon'

UPDATE animals
set owner_id = 2
where name = 'Gabumon' or name = 'Pikachu'

UPDATE animals
set owner_id = 3
where name = 'Devimon' or  name = 'Plantmon';

UPDATE animals
set owner_id = 4
where name = 'Charmander' or  name = 'Squirtle' or  name = 'Blossom';

UPDATE animals
set owner_id = 5
where name = 'Angemon' or  name = 'Boarmon';
