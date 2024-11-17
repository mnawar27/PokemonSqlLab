'''What are all the types of pokemon that a pokemon can have?'''
SELECT name FROM types;

''' What is the name of the pokemon with id 45?'''
SELECT name FROM pokemons WHERE id = 45;

'''How many pokemon are there?'''
SELECT count(*) AS numberOfPokemons FROM pokemons;

'''How many types are there?'''
SELECT count(*) AS numberOfType FROM types;

'''How many pokemon have a secondary type?'''
SELECT count(*) AS numberOfSecondaryType FROM pokemons WHERE secondary_type IS NOT NULL;