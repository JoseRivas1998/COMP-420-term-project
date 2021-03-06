-- A report will be generated that shows a Pokemon’s base stats
USE pokemondb;
DROP PROCEDURE IF EXISTS base_stats;

DELIMITER //
CREATE PROCEDURE base_stats(IN POKEMON_NUM INT(11))
BEGIN
    DECLARE HP, ATTACK, DEFENSE, SPECIAL_ATTACK, SPECIAL_DEFENSE, SPEED, TOTAL_STATS INT DEFAULT 0;
    DECLARE PKMN_NAME VARCHAR(255);
    SET PKMN_NAME = (SELECT POKEMON_NAME
                     FROM POKEMON
                     WHERE POKEMON_ID = POKEMON_NUM);
    SET HP = (SELECT STAT_VALUE
              FROM BASE_STAT
              WHERE STAT_ID = 1
                AND POKEMON_ID = POKEMON_NUM);
    SET ATTACK = (SELECT STAT_VALUE
                  FROM BASE_STAT
                  WHERE STAT_ID = 2
                    AND POKEMON_ID = POKEMON_NUM);
    SET DEFENSE = (SELECT STAT_VALUE
                   FROM BASE_STAT
                   WHERE STAT_ID = 3
                     AND POKEMON_ID = POKEMON_NUM);
    SET SPECIAL_ATTACK = (SELECT STAT_VALUE
                          FROM BASE_STAT
                          WHERE STAT_ID = 4
                            AND POKEMON_ID = POKEMON_NUM);
    SET SPECIAL_DEFENSE = (SELECT STAT_VALUE
                           FROM BASE_STAT
                           WHERE STAT_ID = 5
                             AND POKEMON_ID = POKEMON_NUM);
    SET SPEED = (SELECT STAT_VALUE
                 FROM BASE_STAT
                 WHERE STAT_ID = 6
                   AND POKEMON_ID = POKEMON_NUM);
    SET TOTAL_STATS = HP + ATTACK + DEFENSE + SPECIAL_ATTACK + SPECIAL_DEFENSE + SPEED;
    SELECT POKEMON_NUM,
           PKMN_NAME       AS 'POKEMON',
           HP              AS 'HP',
           ATTACK          AS 'ATTACK',
           DEFENSE         AS 'DEFENSE',
           SPECIAL_ATTACK  AS 'SPECIAL_ATTACK',
           SPECIAL_DEFENSE AS 'SPECIAL_DEFENSE',
           SPEED           AS 'SPEED',
           TOTAL_STATS     AS 'TOTAL';

END //
DELIMITER ;

CALL base_stats(5);
