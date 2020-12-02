USE pokemondb;

DROP PROCEDURE IF EXISTS get_natures_that_increase_stat;
DROP PROCEDURE IF EXISTS get_natures_that_decrease_stat;

DELIMITER //

CREATE PROCEDURE get_natures_that_increase_stat(IN STAT INT)
BEGIN
    SELECT NATURE.*
    FROM NATURE_STAT
             JOIN NATURE USING (NATURE_ID)
    WHERE STAT_ID = STAT
      AND STAT_MULTIPLIER > 1
    ORDER BY NATURE.NATURE_NAME;
END //
CREATE PROCEDURE get_natures_that_decrease_stat(IN STAT INT)
BEGIN
    SELECT NATURE.*
    FROM NATURE_STAT
             JOIN NATURE USING (NATURE_ID)
    WHERE STAT_ID = STAT
      AND STAT_MULTIPLIER < 1
    ORDER BY NATURE.NATURE_NAME;

END //

DELIMITER ;

CALL get_natures_that_increase_stat(5);
CALL get_natures_that_decrease_stat(5);
