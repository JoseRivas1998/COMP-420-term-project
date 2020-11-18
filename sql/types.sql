USE pokemondb;

DELETE
FROM TYPE_EFFECTIVENESS
WHERE TRUE;
DELETE
FROM TYPE
WHERE TRUE;

INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX)
VALUES (1, 'Normal', 'A8A878'),
       (2, 'Fighting', 'C03028'),
       (3, 'Flying', 'A890F0'),
       (4, 'Poison', 'A040A0'),
       (5, 'Ground', 'E0C068'),
       (6, 'Rock', 'B8A038'),
       (7, 'Bug', 'A8B820'),
       (8, 'Ghost', '705898'),
       (9, 'Steel', 'B8B8D0'),
       (10, 'Fire', 'F08030'),
       (11, 'Water', '6890F0'),
       (12, 'Grass', '78C850'),
       (13, 'Electric', 'F8D030'),
       (14, 'Psychic', 'F85888'),
       (15, 'Ice', '98D8D8'),
       (16, 'Dragon', '7038F8'),
       (17, 'Dark', '705848'),
       (18, 'Fairy', 'EE99AC');
