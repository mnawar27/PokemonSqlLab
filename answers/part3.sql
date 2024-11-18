'''What is each pokemons primary type?'''
select primary_type from pokemons;
'''(optional) with name of type'''
SELECT p.name, p.primary_type, t.name as type_name FROM pokemons p join types t on p.primary_type = t.id;

'''What is Rufflets secondary type?'''
SELECT name, secondary_type FROM pokemons WHERE name = "Rufflet";
'''(optional) with name of type'''
SELECT p.name, p.secondary_type, t.name as type_name FROM pokemons p join types t on p.secondary_type = t.id WHERE p.name = "Rufflet";


'''What are the names of the pokemon that belong to the trainer with trainerID 303?'''
select p.name, pt.trainerID from pokemons p 
join pokemon_trainer pt 
on p.id = pt.pokemon_id 
where pt.trainerID = 303;

'''How many pokemon have a secondary type Poison'''
select count(*) from pokemons p
join types t
on p.secondary_type = t.id
where t.name = "Poison";


'''What are all the primary types and how many pokemon have that type?'''
select t.name as primary_type, count(*) as numberOfPokemons from pokemons p
join types t
on p.primary_type = t.id
group by t.name;

'''How many pokemon at level 100 does each trainer with at least one level 100 pokemone have?'''
select pt.trainerID, count(*) as numberOfPokemonsinlevel100
from pokemon_trainer pt
where pt.pokelevel = 100
group by pt.trainerID
having count(*) > 0;

'''How many pokemon only belong to one trainer and no other?'''
select count(*) as numberOfPokemons
from (
    select pt.pokemon_id
    from pokemon_trainer pt
    group by pt.pokemon_id
    having count(pt.trainerID) = 1
) as oneTrainerPokemons;


