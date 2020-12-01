-- A Pokemon view will join in most of the tables that the Pokemon table connects to, including its two types, abilities, egg groups, and base stats.
USE pokemondb;
DROP VIEW IF EXISTS full_pokemon_data;
CREATE VIEW full_pokemon_data AS
SELECT POKEMON.POKEMON_ID AS "POKEMON NUMBER",
	   POKEMON.POKEMON_NAME AS "NAME",
       TYPE_1.TYPE_NAME AS "TYPE 1",
       TYPE_2.TYPE_NAME AS "TYPE 2",
       EGG_1.EGG_GROUP_NAME AS "PRIMARY EGG GROUP",
       EGG_2.EGG_GROUP_NAME AS "SECONDARY EGG GROUP",
       ABILITY_1.ABILITY_NAME AS "PRIMARY ABILITY",
       ABILITY_2.ABILITY_NAME AS "SECONDARY ABILITY",
       ABILITY_H.ABILITY_NAME AS "HIDDEN_ABILITY",
       POKEMON.POKEMON_DESCRIPTION AS "DESCRIPTION"
FROM POKEMON
	INNER JOIN TYPE AS TYPE_1
		ON (TYPE_1.TYPE_ID=POKEMON.PRIMARY_TYPE)
	INNER JOIN TYPE AS TYPE_2
		ON (TYPE_2.TYPE_ID=POKEMON.SECONDARY_TYPE)
	INNER JOIN EGG_GROUP AS EGG_1
		ON (EGG_1.EGG_GROUP_ID=POKEMON.PRIMARY_EGG_GROUP)
	INNER JOIN EGG_GROUP AS EGG_2
		ON (EGG_2.EGG_GROUP_ID=POKEMON.SECONDARY_EGG_GROUP)
	INNER JOIN ABILITY AS ABILITY_1
		ON (ABILITY_1.ABILITY_ID=POKEMON.PRIMARY_ABILITY)
	INNER JOIN ABILITY AS ABILITY_2
		ON (ABILITY_2.ABILITY_ID=POKEMON.SECONDARY_ABILITY)   
	INNER JOIN ABILITY AS ABILITY_H
		ON (ABILITY_H.ABILITY_ID=POKEMON.HIDDEN_ABILITY)          
WHERE POKEMON.POKEMON_ID > 0;
SELECT * FROM pokemondb.full_pokemon_data;