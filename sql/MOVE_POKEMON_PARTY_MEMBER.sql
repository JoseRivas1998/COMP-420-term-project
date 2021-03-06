USE pokemondb;

DROP PROCEDURE IF EXISTS move_pokemon_back;
DROP PROCEDURE IF EXISTS move_pokemon_forward;

DELIMITER //

CREATE PROCEDURE move_pokemon_back(IN IN_USERNAME VARCHAR(255), IN IN_POKEMON_ID INT)
BEGIN
    DECLARE RESOLVED_USERNAME VARCHAR(255) DEFAULT NULL;
    DECLARE RESOLVED_POKEMON_ID INT DEFAULT NULL;
    DECLARE ORIGINAL_ORDINAL INT DEFAULT NULL;
    DECLARE TARGET_ORDINAL INT DEFAULT NULL;
    DECLARE POKEMON_AT_TARGET_ORDINAL INT DEFAULT NULL;

    START TRANSACTION;

    SET RESOLVED_USERNAME = (SELECT USERNAME FROM POKEDEX_USERS WHERE USERNAME = IN_USERNAME LIMIT 1);
    IF RESOLVED_USERNAME IS NOT NULL THEN
        SET RESOLVED_POKEMON_ID = (SELECT POKEMON_ID FROM POKEMON WHERE POKEMON_ID = IN_POKEMON_ID LIMIT 1);
        IF RESOLVED_POKEMON_ID IS NOT NULL THEN
            SET ORIGINAL_ORDINAL = (SELECT PARTY_ORDINAL
                                    FROM POKEMON_PARTY
                                    WHERE USERNAME = RESOLVED_USERNAME
                                      AND POKEMON_ID = RESOLVED_POKEMON_ID);
            IF ORIGINAL_ORDINAL IS NOT NULL THEN
                SET TARGET_ORDINAL = ORIGINAL_ORDINAL - 1;
                SET POKEMON_AT_TARGET_ORDINAL = (SELECT POKEMON_ID
                                                 FROM POKEMON_PARTY
                                                 WHERE USERNAME = RESOLVED_USERNAME
                                                   AND PARTY_ORDINAL = TARGET_ORDINAL
                                                 LIMIT 1);
                IF POKEMON_AT_TARGET_ORDINAL IS NOT NULL THEN
                    UPDATE POKEMON_PARTY
                    SET PARTY_ORDINAL = ORIGINAL_ORDINAL
                    WHERE USERNAME = RESOLVED_USERNAME
                      AND POKEMON_ID = POKEMON_AT_TARGET_ORDINAL;

                    UPDATE POKEMON_PARTY
                    SET PARTY_ORDINAL = TARGET_ORDINAL
                    WHERE USERNAME = RESOLVED_USERNAME
                      AND POKEMON_ID = RESOLVED_POKEMON_ID;

                    COMMIT;

                ELSE
                    ROLLBACK;
                END IF;
            ELSE
                ROLLBACK;
            END IF;
        ELSE
            ROLLBACK;
        END IF;
    ELSE
        ROLLBACK;
    END IF;
END //

CREATE PROCEDURE move_pokemon_forward(IN IN_USERNAME VARCHAR(255), IN IN_POKEMON_ID INT)
BEGIN
    DECLARE RESOLVED_USERNAME VARCHAR(255) DEFAULT NULL;
    DECLARE RESOLVED_POKEMON_ID INT DEFAULT NULL;
    DECLARE ORIGINAL_ORDINAL INT DEFAULT NULL;
    DECLARE TARGET_ORDINAL INT DEFAULT NULL;
    DECLARE POKEMON_AT_TARGET_ORDINAL INT DEFAULT NULL;

    START TRANSACTION;

    SET RESOLVED_USERNAME = (SELECT USERNAME FROM POKEDEX_USERS WHERE USERNAME = IN_USERNAME LIMIT 1);
    IF RESOLVED_USERNAME IS NOT NULL THEN
        SET RESOLVED_POKEMON_ID = (SELECT POKEMON_ID FROM POKEMON WHERE POKEMON_ID = IN_POKEMON_ID LIMIT 1);
        IF RESOLVED_POKEMON_ID IS NOT NULL THEN
            SET ORIGINAL_ORDINAL = (SELECT PARTY_ORDINAL
                                    FROM POKEMON_PARTY
                                    WHERE USERNAME = RESOLVED_USERNAME
                                      AND POKEMON_ID = RESOLVED_POKEMON_ID);
            IF ORIGINAL_ORDINAL IS NOT NULL THEN
                SET TARGET_ORDINAL = ORIGINAL_ORDINAL + 1;
                SET POKEMON_AT_TARGET_ORDINAL = (SELECT POKEMON_ID
                                                 FROM POKEMON_PARTY
                                                 WHERE USERNAME = RESOLVED_USERNAME
                                                   AND PARTY_ORDINAL = TARGET_ORDINAL
                                                 LIMIT 1);
                IF POKEMON_AT_TARGET_ORDINAL IS NOT NULL THEN
                    UPDATE POKEMON_PARTY
                    SET PARTY_ORDINAL = ORIGINAL_ORDINAL
                    WHERE USERNAME = RESOLVED_USERNAME
                      AND POKEMON_ID = POKEMON_AT_TARGET_ORDINAL;

                    UPDATE POKEMON_PARTY
                    SET PARTY_ORDINAL = TARGET_ORDINAL
                    WHERE USERNAME = RESOLVED_USERNAME
                      AND POKEMON_ID = RESOLVED_POKEMON_ID;

                    COMMIT;

                ELSE
                    ROLLBACK;
                END IF;
            ELSE
                ROLLBACK;
            END IF;
        ELSE
            ROLLBACK;
        END IF;
    ELSE
        ROLLBACK;
    END IF;
END //

DELIMITER ;
