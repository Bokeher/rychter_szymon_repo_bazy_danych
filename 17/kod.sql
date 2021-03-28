INSERT INTO produkty (id, produkt)
VALUES
 (1, 'masło'),
 (2, 'mleko'),
 (3, 'chleb'),
 (4, 'kiełbasa'),
 (5, 'ziemniaki'),
 (6, 'pomidory');
 
-- 3
INSERT INTO wydatki (osoba_id, produkt_id, data)
VALUES
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5)),
 (ROUND(RAND()*2+1), ROUND(RAND()*5+1), CONCAT('2021-01-', ROUND(RAND()*30+1)), ROUND(RAND()*25+5));

-- 4.1
SELECT wydatki.id, osoby.osoba, produkty.produkt, data, cena
FROM wydatki, osoby, produkty
WHERE osoby.id = wydatki.osoba_id AND produkty.id = wydatki.produkt_id AND data = '2021-01-23'
ORDER BY wydatki.id

-- 4.2
SELECT wydatki.id, osoby.osoba, produkty.produkt, data, cena
FROM wydatki, osoby, produkty
WHERE osoby.id = wydatki.osoba_id AND produkty.id = wydatki.produkt_id AND MONTH(data) = 1
ORDER BY wydatki.id

-- 4.3
SELECT SUM(cena) AS "Suma wydatkow dnia 2021-01-23"
FROM wydatki
WHERE data = '2021-01-23'

-- 4.4
SELECT SUM(cena) AS "Suma wydatkow w Styczniu"
FROM wydatki
WHERE MONTH(data) = 1

-- 4.5
SELECT SUM(cena) AS "Suma wydatkow na ziemniaki i chleb"
FROM wydatki
WHERE produkt_id = 3 OR produkt_id = 5

--STARE ZAPYTANIA, BEZ ALIASOW I NA ID ZAMIAST NAZW
-- -- 4.1
-- SELECT *
-- FROM wydatki
-- WHERE data = '2021-01-29'

-- -- 4.2
-- SELECT *
-- FROM wydatki
-- WHERE MONTH(data) = 1

-- -- 4.3
-- SELECT SUM(kwota) AS "Suma wydatkow dnia 2021-01-20"
-- FROM wydatki
-- WHERE data = '2021-01-20'

-- -- 4.4
-- SELECT SUM(kwota) AS "Suma wydatkow w Styczniu"
-- FROM wydatki
-- WHERE MONTH(data) = 1

-- -- 4.5
-- SELECT SUM(kwota) AS "Suma wydatkow na ziemniaki i chleb"
-- FROM wydatki
-- WHERE produkt_id = 3 OR produkt_id = 5