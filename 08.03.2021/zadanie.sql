SELECT CONCAT(imie, ' ', nazwisko) AS 'imie i nazwisko', CONCAT(SUBSTRING(miasto, 1, 3), ', ', kod) AS 'miasto i kod pocztowy'
FROM `moje_dane`;

SELECT imie, nazwisko, data 
FROM `moje_dane` 
WHERE id = ROUND(RAND()*28+1);

SELECT UPPER(imie) AS imie, UPPER(nazwisko) AS nazwisko, UPPER(miasto) AS miejscowosc
FROM `moje_dane`;