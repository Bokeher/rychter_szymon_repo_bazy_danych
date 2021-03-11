--1
SELECT UPPER(imie)
FROM imie

--2
SELECT LOWER(imie)
FROM imie

--3
SELECT SUBSTRING(imie, 1, 1)
FROM imie

--4
SELECT SUBSTRING(nazwisko, 1, 2)
FROM nazwisko

--5
SELECT ROUND(RAND()*40+10)

--6
SELECT CONCAT(SUBSTRING(imie.imie, 1, 1), SUBSTRING(nazwisko.nazwisko, 1, 1)) AS inicialy
FROM imie, nazwisko, main
WHERE main.id_imie = imie.id AND main.id_nazwisko = nazwisko.id
ORDER BY main.id

--7
SELECT CONCAT(SUBSTRING(imie.imie, 1, 1), SUBSTRING(nazwisko.nazwisko, 1, 1)) AS inicialy, (main.waga/((main.wzrost/100)*(main.wzrost/100))) AS BMI
FROM imie, nazwisko, main
WHERE main.id_imie = imie.id AND main.id_nazwisko = nazwisko.id
ORDER BY main.id

--8
SELECT imie.imie, nazwisko.nazwisko
FROM imie, nazwisko
WHERE imie.id = ROUND(RAND()*7+1) AND nazwisko.id = ROUND(RAND()*7+1) 

--9
SELECT *
FROM main
WHERE data_urodzenia BETWEEN '1980-01-01' AND '1989-12-31'

--10
SELECT *
FROM MAIN
WHERE id = ROUND(rand()*19+1) AND data_urodzenia > '1989-12-31'