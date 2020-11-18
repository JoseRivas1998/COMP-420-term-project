USE pokemondb;

DELETE
FROM TYPE_EFFECTIVENESS
WHERE TRUE;

INSERT INTO TYPE_EFFECTIVENESS(ATTACK_TYPE_ID, DEFEND_TYPE_ID, EFFECTIVENESS_MULTIPLIER)
VALUES (1, 6, 0.500000),
       (1, 9, 0.500000),
       (1, 8, 0.000000),
       (2, 1, 2.000000),
       (2, 6, 2.000000),
       (2, 9, 2.000000),
       (2, 15, 2.000000),
       (2, 17, 2.000000),
       (2, 3, 0.500000),
       (2, 4, 0.500000),
       (2, 7, 0.500000),
       (2, 14, 0.500000),
       (2, 18, 0.500000),
       (2, 8, 0.000000),
       (3, 2, 2.000000),
       (3, 7, 2.000000),
       (3, 12, 2.000000),
       (3, 6, 0.500000),
       (3, 9, 0.500000),
       (3, 13, 0.500000),
       (4, 12, 2.000000),
       (4, 18, 2.000000),
       (4, 4, 0.500000),
       (4, 5, 0.500000),
       (4, 6, 0.500000),
       (4, 8, 0.500000),
       (4, 9, 0.000000),
       (5, 4, 2.000000),
       (5, 6, 2.000000),
       (5, 9, 2.000000),
       (5, 10, 2.000000),
       (5, 13, 2.000000),
       (5, 7, 0.500000),
       (5, 12, 0.500000),
       (5, 3, 0.000000),
       (6, 3, 2.000000),
       (6, 7, 2.000000),
       (6, 10, 2.000000),
       (6, 15, 2.000000),
       (6, 2, 0.500000),
       (6, 5, 0.500000),
       (6, 9, 0.500000),
       (7, 12, 2.000000),
       (7, 14, 2.000000),
       (7, 17, 2.000000),
       (7, 2, 0.500000),
       (7, 3, 0.500000),
       (7, 4, 0.500000),
       (7, 8, 0.500000),
       (7, 9, 0.500000),
       (7, 10, 0.500000),
       (7, 18, 0.500000),
       (8, 8, 2.000000),
       (8, 14, 2.000000),
       (8, 17, 0.500000),
       (8, 1, 0.000000),
       (9, 6, 2.000000),
       (9, 15, 2.000000),
       (9, 18, 2.000000),
       (9, 9, 0.500000),
       (9, 10, 0.500000),
       (9, 11, 0.500000),
       (9, 13, 0.500000),
       (10, 7, 2.000000),
       (10, 9, 2.000000),
       (10, 12, 2.000000),
       (10, 15, 2.000000),
       (10, 6, 0.500000),
       (10, 10, 0.500000),
       (10, 11, 0.500000),
       (10, 16, 0.500000),
       (11, 5, 2.000000),
       (11, 6, 2.000000),
       (11, 10, 2.000000),
       (11, 11, 0.500000),
       (11, 12, 0.500000),
       (11, 16, 0.500000),
       (12, 5, 2.000000),
       (12, 6, 2.000000),
       (12, 11, 2.000000),
       (12, 3, 0.500000),
       (12, 4, 0.500000),
       (12, 7, 0.500000),
       (12, 9, 0.500000),
       (12, 10, 0.500000),
       (12, 12, 0.500000),
       (12, 16, 0.500000),
       (13, 3, 2.000000),
       (13, 11, 2.000000),
       (13, 12, 0.500000),
       (13, 13, 0.500000),
       (13, 16, 0.500000),
       (13, 5, 0.000000),
       (14, 2, 2.000000),
       (14, 4, 2.000000),
       (14, 9, 0.500000),
       (14, 14, 0.500000),
       (14, 17, 0.000000),
       (15, 3, 2.000000),
       (15, 5, 2.000000),
       (15, 12, 2.000000),
       (15, 16, 2.000000),
       (15, 9, 0.500000),
       (15, 10, 0.500000),
       (15, 11, 0.500000),
       (15, 15, 0.500000),
       (16, 16, 2.000000),
       (16, 9, 0.500000),
       (16, 18, 0.000000),
       (17, 8, 2.000000),
       (17, 14, 2.000000),
       (17, 2, 0.500000),
       (17, 17, 0.500000),
       (17, 18, 0.500000),
       (18, 2, 2.000000),
       (18, 16, 2.000000),
       (18, 17, 2.000000),
       (18, 4, 0.500000),
       (18, 9, 0.500000),
       (18, 10, 0.500000);