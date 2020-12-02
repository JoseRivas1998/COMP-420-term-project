--  A user can calculate type effectiveness by inputting the attacking type, and inputting the one or two defending types.
USE pokemondb;

DROP PROCEDURE IF EXISTS type_effectiveness;
DROP FUNCTION IF EXISTS type_effectiveness;
DROP PROCEDURE IF EXISTS pokemon_type_effectiveness;

DELIMITER //
CREATE FUNCTION type_effectiveness(ATTACK_TYPE INT(11), DEFEND_TYPE_1 INT(11), DEFEND_TYPE_2 INT(11))
    RETURNS FLOAT
BEGIN
    DECLARE EFFECT_VALUE1, EFFECT_VALUE2, AVG_EFFECT FLOAT DEFAULT 0;
    SET EFFECT_VALUE1 = (SELECT EFFECTIVENESS_MULTIPLIER
                         FROM TYPE_EFFECTIVENESS
                         WHERE DEFEND_TYPE_ID = DEFEND_TYPE_1
                           AND ATTACK_TYPE_ID = ATTACK_TYPE);
    SET EFFECT_VALUE2 = (SELECT EFFECTIVENESS_MULTIPLIER
                         FROM TYPE_EFFECTIVENESS
                         WHERE DEFEND_TYPE_ID = DEFEND_TYPE_2
                           AND ATTACK_TYPE_ID = ATTACK_TYPE);
    SET AVG_EFFECT = IFNULL(EFFECT_VALUE1, 1) * IFNULL(EFFECT_VALUE2, 1);

    RETURN AVG_EFFECT;
END //

CREATE PROCEDURE pokemon_type_effectiveness(IN POKEMON_NUM INT)
BEGIN
    DECLARE TYPE_1, TYPE_2 INT;
    SET TYPE_1 = (SELECT PRIMARY_TYPE
                  FROM POKEMON
                  WHERE POKEMON_ID = POKEMON_NUM);
    SET TYPE_2 = (SELECT SECONDARY_TYPE
                  FROM POKEMON
                  WHERE POKEMON_ID = POKEMON_NUM);
    SELECT *,
           type_effectiveness(TYPE.TYPE_ID, TYPE_1, TYPE_2) AS EFFECT
    FROM TYPE
    ORDER BY TYPE_ID;
END //

DELIMITER ;

SELECT type_effectiveness(10, 11, 12);
SELECT type_effectiveness(11, 10, NULL);
SELECT type_effectiveness(11, 10, 6);
SELECT type_effectiveness(10, 10, 6);
SELECT type_effectiveness(1, 10, 6);

CALL pokemon_type_effectiveness(1);
