-- View natures
USE pokemondb;
DROP VIEW IF EXISTS view_natures;
CREATE VIEW view_natures AS
SELECT NATURE.NATURE_NAME AS "Nature Names"
FROM NATURE;

SELECT * FROM pokemondb.view_natures;