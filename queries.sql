/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon%';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';
SELECT name FROM animals WHERE neutered IS TRUE AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT (name, escape_attempts) FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered IS TRUE;
SELECT * FROM animals WHERE name <> 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= 10.04 AND  weight_kg <= 17.03;

/*Transaction Queries */

-- Inside a transaction update the animals table by setting the species column to unspecified. Verify that change was made. Then roll back the change and verify that the species columns went back to the state before the transaction.
BEGIN TRANSACTION;

UPDATE animals 
SET species = 'unspecified';

SELECT name, species FROM animals;

ROLLBACK;

SELECT * FROM animals;

--Update the animals table by setting the species column to digimon for all animals that have a name ending in mon.
--Update the animals table by setting the species column to pokemon for all animals that don't have species already set.
--Commit the transaction.
--Verify that change was made and persists after commit.
BEGIN TRANSACTION;

UPDATE animals 
SET species = 'digimon'       
WHERE name LIKE '%mon%';

UPDATE animals 
SET species = 'pokemon'
WHERE species IS NULL;

COMMIT;

SELECT * FROM animals;

--delete all records in the animals table, then roll back the transaction.
--After the rollback verify if all records in the animals
BEGIN TRANSACTION;

DELETE FROM animals;

ROLLBACK;

SELECT * FROM animals;

--Delete all animals born after Jan 1st, 2022.
--Create a savepoint for the transaction.
--Update all animals' weight to be their weight multiplied by -1.
--Rollback to the savepoint
--Update all animals' weights that are negative to be their weight multiplied by -1.
--Commit transaction

BEGIN TRANSACTION;

DELETE FROM animals  
WHERE date_of_birth > '2022-01-01';

SAVEPOINT SP1;

UPDATE animals 
SET weight_kg = weight_kg * -1;

ROLLBACK TO SP1;

UPDATE animals 
SET weight_kg = weight_kg * -1
WHERE weight_kg < 0;

COMMIT;


