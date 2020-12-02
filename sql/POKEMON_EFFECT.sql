USE pokemondb;
DROP PROCEDURE IF EXISTS effect;

DELIMITER //
CREATE PROCEDURE effect(IN TYPE1 INT(11))
BEGIN
	SELECT * FROM TYPE
    JOIN TYPE_EFFECTIVENESS AS ATTACK
		ON (ATTACK.ATTACK_TYPE_ID=TYPE.TYPE_ID)
	WHERE DEFEND_TYPE_ID = TYPE1;
END //

CALL effect(12)