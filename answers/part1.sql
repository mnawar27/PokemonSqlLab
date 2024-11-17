USE pokemon;

SHOW tables;

'''View the columns in each table'''
DESCRIBE pokemon_trainer;
DESCRIBE pokemons;
DESCRIBE trainers;
DESCRIBE types;

'''Check the first few rows of each table'''
SELECT * FROM pokemon_trainer LIMIT 1;
SELECT * FROM pokemons LIMIT 1;
SELECT * FROM trainers LIMIT 1;
SELECT * FROM types LIMIT 1;