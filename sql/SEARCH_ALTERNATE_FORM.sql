-- A report will be generated of a Pokemon that lists it’s alternative forms, including the changes to type, ability, and base stats.
USE pokemondb;
DROP PROCEDURE IF EXISTS alternative_forms;

DELIMITER //
CREATE PROCEDURE alternative_forms(IN POKEMON_NUM INT(11))
BEGIN
    SELECT ALTERNATE_FORM.*
    FROM POKEMON
             INNER JOIN ALTERNATE_FORM ON ALTERNATE_FORM.POKEMON_ID = POKEMON.POKEMON_ID
    WHERE POKEMON.POKEMON_ID = POKEMON_NUM;
END //
DELIMITER ;

CALL alternative_forms(201);
