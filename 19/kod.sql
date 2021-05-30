-- CREATE

CREATE TABLE pytania(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    kategoria_id INT NOT NULL,
    pytanie VARCHAR(100) NOT NULL, 
    odpowiedz1 VARCHAR(100) NOT NULL,
    odpowiedz2 VARCHAR(100) NOT NULL,  
    odpowiedz3 VARCHAR(100) NOT NULL,
    odpowiedz4 VARCHAR(100) NOT NULL,
    poprawneOdpowiedzi VARCHAR(10) NOT NULL,
    ilosc_punktow INT NOT NULL
);

CREATE TABLE uzytkownicy(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    nazwa VARCHAR(40) NOT NULL,
    email VARCHAR(50) NOT NULL,
    haslo CHAR(32) NOT NULL
);

CREATE TABLE kategorie(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    kategoria VARCHAR(30)
);

CREATE TABLE test(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    uzytkownik_id INT NOT NULL,
    test_nr INT NOT NULL,
    pytanie_id INT NOT NULL,
    odpowiedz VARCHAR(10) NOT NULL,
    `czas[s]` INT NOT NULL
);


-- INSERT

INSERT INTO pytania
VALUES
    (1, 1, "Które polecenie usunie całą bazę danych?", "DROP TABLE", "DROP DATABASE", "DELETE DATABASE", "DELETE TABLE", "2", 1),
    (2, 2, "Jaki typ danych nie przechowuje tekstu?", "VARCHAR", "TEXT", "DECIMAL", "CHAR", "3", 1),
    (3, 3, "Która funkcja obliczy średnią?", "AVERAGE()", "AVG()", "ŚREDNIA()", "ŚRD()", "2", 2),
    (4, 3, "Która funkcja obliczy sumę?", "SUM()", "SUMA()", "SM()", "SUMOF()", "1", 2),
    (5, 3, "Która funkcja policzy ile jest danych?", "ILE()", "HOWMANY()", "LENGTH()", "COUNT()", "4", 2),
    (6, 2, "Jaki typ danych użyć aby zapisać liczbe z przecinkiem?", "INT", "VARCHAR", "DECIMAL", "TEXT", "3", 1),
    (7, 4, "Jakie polecenie służy do edytowania tabeli?", "ALTER TABLE", "EDIT TABLE", "CHANGE TABLE", "MODIFY TABLE", "1", 2),
    (8, 5, "Jakie polecenie służy do wprowadzania danych do tabli?", "ADD DATA", "INSERT INTO", "INSERT IN", "SET DATA", "2", 2),
    (9, 5, "Jakie polecenie utworzy tabelę o nazwie klienci?", "CREATE TABLE klienci", "TABLE klienci", "ADD TABLE klienci", "NEW TABLE klienci", "1", 1),
    (10, 6, "Czym jest SUM", "Rybą", "Funkcją", "Poleceniem", "Nie ma takiej rzeczy", "2", 1),
    (11, 7, "Jaki warunek wyświetli dane z lat 1999-2001?", "WHERE data BETWEEN 1999 AND 2001", "WHERE YEAR(data) >= 1999 AND YEAR(data) <= 2001", "WHERE data >= 1999 AND data <= 2001", "WHERE data = 1999 AND data = 2000 AND data = 2001", "2", 3),
    (12, 7, "Jaki warunek wyświetli dane o id 4?", "WHERE id = 4", "WHERE id == 4", "WHERE id EQUALS 4", "WHERE id IS 4", "1", 2),
    (13, 3, "Która funkcja zwróci losową liczbę?", "LOS()", "RANDOM()", "LOSOWA()", "RAND()", "4", 2),
    (14, 3, "Z jakiego zakresu wylosuje funkcja ROUND(RAND()*3)", "0-2", "1-3", "2-4", "0-3", "4", 3),
    (15, 7, "Jakie polecenie wyświetli wszystkie osoby o imieniu Adam?", "SELECT * FROM imiona WHERE imie == 'Adam'", "SELECT * FROM imiona WHERE imie = 'Adam'", "SELECT * FROM imiona WHERE imie 'Adam'", "SELECT all FROM imiona WHERE imie = 'Adam'", "1", 2),
    (16, 6, "Jakie jest rozwinięcie skrótu SQL?", "Strong Question Language", "Structured Query Language", "Structured Query Language", "Structured Question Language", "2", 1),
    (17, 7, "Które zapytanie wyświetli wszystkie dane z tabeli 'uczniowie'?", "SELECT * FROM uczniowie", "SELECT all FROM uczniowie", "SELECT EVERYTHING FROM uczniowie", "SELECT [all] FROM uczniowie", "1", 1),
    (18, 7, "Jakie zapytanie wyswieli wszystkie miasta zaczynajace się na N?", "SELECT * FROM miasta WHERE miasto LIKE '%a' ", "SELECT * FROM miasta WHERE miasto LIKE 'a%'", "SELECT * FROM miasta WHERE miasto STARTSWITH 'a'", "SELECT * FROM miasta WHERE miasto LIKE 'a*'", "2", 2),
    (19, 3, "Które zapytanie wyświetli liczbę z zakresu 1-4?", "SELECT ROUND(RAND()*3+1)", "SELECT ROUND(RAND()*4)", "SELECT ROUND(RAND()*4-1)", "SELECT ROUND(RAND()*3+(2-1))", "1, 4", 2),
    (20, 7, "Jakie polecenie wyświetli nazwiska osób o imieniu Tomasz?", "SELECT nazwisko FROM dane WHERE imie = 'Tomasz'", "SELECT nazwisko FROM dane WHERE dane.imie = 'Tomasz'", "SELECT nazwisko FROM dane WHERE imie == 'Tomasz'", "SELECT nazwisko FROM dane WHERE imie EQUALS 'Tomasz'", "1, 2", 2);

INSERT INTO uzytkownicy
VALUES
    (1, "Maciek2004", "Maciek200004@gmail.com", MD5("Maciek2137")),
    (2, "Tompek123", "Tompek2115@gmail.com", MD5("StopnieWWindzie"));

INSERT INTO kategorie
VALUES
    (1, "Usuwanie"),
    (2, "Typy danych"),
    (3, "Funkcje"),
    (4, "Modyfikowanie"),
    (5, "Tworzenie"),
    (6, "Inne"),
    (7, "Zapytanie");

INSERT INTO test
VALUES
    (1, ROUND(RAND()*1+1), 1, ROUND(RAND()*19+1), CONCAT("", ROUND(RAND()*3+1)), ROUND(RAND()*59+1)),
    (2, ROUND(RAND()*1+1), 1, ROUND(RAND()*19+1), CONCAT("", ROUND(RAND()*3+1)), ROUND(RAND()*59+1)),
    (3, ROUND(RAND()*1+1), 1, ROUND(RAND()*19+1), CONCAT("", ROUND(RAND()*3+1)), ROUND(RAND()*59+1)),
    (4, ROUND(RAND()*1+1), 1, ROUND(RAND()*19+1), CONCAT("", ROUND(RAND()*3+1)), ROUND(RAND()*59+1)),
    (5, ROUND(RAND()*1+1), 1, ROUND(RAND()*19+1), CONCAT("", ROUND(RAND()*3+1)), ROUND(RAND()*59+1)),
    (6, ROUND(RAND()*1+1), 1, ROUND(RAND()*19+1), "1, 4", ROUND(RAND()*59+1))


-- KWERENDY
-- losowe pytanie z okreslonej kategori
SELECT kategorie.kategoria, pytanie, odpowiedz1, odpowiedz2, odpowiedz3, odpowiedz4, poprawneOdpowiedzi, ilosc_punktow
FROM pytania, kategorie
WHERE kategoria_id = 1 AND kategorie.id = kategoria_id
ORDER BY RAND()
LIMIT 1

-- ilosc pytan
SELECT COUNT(id) AS `ilosc pytan`
FROM pytania

-- ilosc pytan z danych kategori
SELECT kategorie.kategoria, COUNT(pytania.kategoria_id) AS `ilosc pytan`
FROM pytania, kategorie
WHERE kategorie.id = kategoria_id
GROUP BY pytania.kategoria_id

-- ilosc zdobytych punkow
SELECT uzytkownicy.nazwa, SUM(pytania.ilosc_punktow) AS `zdobyte punkty`
FROM pytania, test, uzytkownicy
WHERE test.uzytkownik_id = 1 AND test.odpowiedz = pytania.poprawneOdpowiedzi AND pytania.id = test.pytanie_id AND uzytkownicy.id = test.uzytkownik_id;

-- maksymalna ilosc punktow do zdobycia
SELECT test.test_nr, SUM(pytania.ilosc_punktow) AS `maksymalna ilosc punktow do zdobycia`
FROM pytania, test
WHERE pytania.id = test.pytanie_id
GROUP BY test.test_nr;