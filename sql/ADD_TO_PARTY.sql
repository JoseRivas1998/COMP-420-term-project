USE pokemondb;

DROP PROCEDURE IF EXISTS add_pokemon_to_party;

DELIMITER //

CREATE PROCEDURE add_pokemon_to_party(IN IN_USERNAME VARCHAR(255), IN IN_POKEMON_ID INT)
BEGIN
    DECLARE RESOLVED_USERNAME VARCHAR(255) DEFAULT NULL;
    DECLARE ADDED BOOL DEFAULT FALSE;
    DECLARE RESOLVED_POKEMON_ID INT DEFAULT NULL;
    DECLARE MAX_ORDINAL INT DEFAULT 0;
    DECLARE NEXT_ORDINAL INT DEFAULT 0;
    SET RESOLVED_USERNAME = (SELECT USERNAME FROM POKEDEX_USERS WHERE USERNAME = IN_USERNAME LIMIT 1);
    IF RESOLVED_USERNAME IS NOT NULL THEN
        SET RESOLVED_POKEMON_ID = (SELECT POKEMON_ID FROM POKEMON WHERE POKEMON_ID = IN_POKEMON_ID LIMIT 1);
        IF RESOLVED_POKEMON_ID IS NOT NULL THEN
            SET MAX_ORDINAL = (SELECT MAX(PARTY_ORDINAL) FROM POKEMON_PARTY WHERE USERNAME = RESOLVED_USERNAME);
            IF MAX_ORDINAL IS NULL THEN
                SET MAX_ORDINAL = 0;
            END IF;
            SET NEXT_ORDINAL = MAX_ORDINAL + 1;
            IF NEXT_ORDINAL <= 6 THEN
                INSERT INTO POKEMON_PARTY(USERNAME, POKEMON_ID, PARTY_ORDINAL)
                VALUES (RESOLVED_USERNAME, RESOLVED_POKEMON_ID, NEXT_ORDINAL);
                SET ADDED = TRUE;
            END IF;
        END IF;
    END IF;
    SELECT ADDED AS 'ADDED';
END //

DELIMITER ;
