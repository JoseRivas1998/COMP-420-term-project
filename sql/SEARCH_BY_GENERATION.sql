-- A user can search for Pokemon by their GENERATION, type, egg group and ability.
USE pokemondb;
DROP PROCEDURE IF EXISTS search_by_generation;
DELIMITER //

CREATE PROCEDURE search_by_generation(GENERATION INT)
    
BEGIN
	DECLARE min_id INT DEFAULT 0;
	DECLARE max_id INT DEFAULT 0;
    IF GENERATION = 1
		THEN
			SET min_id  = 1;
			SET max_id = 151;
    ELSE IF GENERATION = 2
		THEN 
			SET min_id  = 152;
			SET max_id = 251;
	ELSE IF GENERATION = 3
		THEN 
			SET min_id  = 252;
			SET max_id = 386;
	ELSE IF GENERATION = 4
		THEN
			SET min_id  = 387;
			SET max_id = 493;
	ELSE IF GENERATION = 5
		THEN
			SET min_id  = 494;
            SET max_id = 649;
	ELSE IF GENERATION = 6
		THEN 
			SET min_id  = 650;
			SET max_id = 721;
	ELSE IF GENERATION = 7
		THEN 
			SET min_id  = 722;
            SET max_id = 809;
	ELSE IF GENERATION = 8
		THEN 
			SET min_id  = 810;
            SET max_id = 898;
	END IF;
    
	SELECT POKEMON_ID FROM POKEMON WHERE POKEMON_ID >= SET min_id  OR POKEMON_ID <= SET max_id;
    END //
DELIMITER ;