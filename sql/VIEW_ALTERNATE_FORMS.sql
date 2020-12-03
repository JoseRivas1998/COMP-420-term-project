-- View pokemon with alternate forms
USE pokemondb;
DROP VIEW IF EXISTS view_alternates;
CREATE VIEW view_alternates AS
SELECT
	POKEMON.POKEMON_NAME AS "POKEMON",
    ALTERNATE_FORM.ALTERNATE_FORM_NAME AS "ALTERNATE_FORM"
    FROM POKEMON
    INNER JOIN ALTERNATE_FORM
    ON (ALTERNATE_FORM.POKEMON_ID=POKEMON.POKEMON_ID)
    WHERE NOT (POKEMON_NAME = "Silvally" OR POKEMON_NAME = "Mothim" OR POKEMON_NAME = "Scatterbug" OR POKEMON_NAME = "Spewpa");

SELECT * FROM pokemondb.view_alternates;