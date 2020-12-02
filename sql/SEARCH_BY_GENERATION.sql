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
        SET min_id = 1;
        SET max_id = 151;
    ELSEIF GENERATION = 2
    THEN
        SET min_id = 152;
        SET max_id = 251;
    ELSEIF GENERATION = 3
    THEN
        SET min_id = 252;
        SET max_id = 386;
    ELSEIF GENERATION = 4
    THEN
        SET min_id = 387;
        SET max_id = 493;
    ELSEIF GENERATION = 5
    THEN
        SET min_id = 494;
        SET max_id = 649;
    ELSEIF GENERATION = 6
    THEN
        SET min_id = 650;
        SET max_id = 721;
    ELSEIF GENERATION = 7
    THEN
        SET min_id = 722;
        SET max_id = 809;
    ELSEIF GENERATION = 8
    THEN
        SET min_id = 810;
        SET max_id = 898;
    END IF;

    SELECT min_id, max_id;
END //
DELIMITER ;

CALL search_by_generation(3);
