-- A Pokemon view will join in most of the tables that the Pokemon table connects to, including its two types, abilities, egg groups, and base stats.
USE pokemondb;
CREATE VIEW Pokemon AS
SELECT POKEMON_ID AS "NUMBER",
	   POKEMON_NAME AS "NAME",
       PRIMARY_TYPE AS "TYPE 1", 
       SECONDARY_TYPE AS "TYPE 2", 
       PRIMARY_ABILITY AS "ABILITY", 
       SECONDARY_ABILITY AS "ABILITY 2",  
       HIDDEN_ABILITY AS "HIDDEN ABILIY" 
FROM POKEMON 
WHERE POKEMON_ID > 0;
SELECT * FROM pokemondb.Pokemon;