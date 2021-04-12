INSERT INTO osoby(id, id_imie, id_nazwisko)
VALUES 
    (1, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (2, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (3, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (4, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (5, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (6, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (7, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (8, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (9, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (10, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (11, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (12, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (13, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (14, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (15, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (16, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (17, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (18, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (19, ROUND(RAND()*24+1), ROUND(RAND()*24+1)),
    (20, ROUND(RAND()*24+1), ROUND(RAND()*24+1))

INSERT INTO produkty
VALUES 
    (null, "Kebab", 200),
    (null, "Pizza", 266),
    (null, "Nuggetsy", 296),
    (null, "Tortilla", 237),
    (null, "Kotlet Schabowy", 231),
    (null, "Jabłko", 52),
    (null, "Banan", 89),
    (null, "Chleb", 264),
    (null, "Kotlet mielony", 204),
    (null, "Udko kurczaka", 400),
    (null, "Chipsy paprykowe - Lay's", 524),
    (null, "Tosty z pomidorem", 340),
    (null, "Bułka", 310),
    (null, "Orzechy laskowe", 628),
    (null, "Tymbark - mięta-jabłko", 36),
    (null, "Jajko sadzone", 196),
    (null, "Jajecznica", 148),
    (null, "Arbuz", 30),
    (null, "Ziemniaki", 77),
    (null, "Pączek", 452)

SELECT COUNT(id) AS 'ilość posiłków dnia 13.04.2021'
FROM zjedzony_pokarm
WHERE DAY(data) = 13

