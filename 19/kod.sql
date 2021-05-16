-- wielokrotny wybor
CREATE TABLE pytania(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    kategoria VARCHAR(20) NOT NULL,
    pytanie VARCHAR(100) NOT NULL, 
    odpowiedz1 VARCHAR(20) NOT NULL,
    odpowiedz2 VARCHAR(20) NOT NULL,  
    odpowiedz3 VARCHAR(20) NOT NULL,
    odpowiedz4 VARCHAR(20) NOT NULL,
    poprawnaOdpowiedz INT NOT NULL,
    ilosc_punktow INT NOT NULL
);

INSERT INTO pytania
VALUES
    (1, "Usuwanie", "Które polecenie usunie całą bazę danych?", "DROP TABLE", "DROP DATABASE", "DELETE DATABASE", "DELETE TABLE", 2, 1),
    (2, "Typy danych", "Jaki typ danych nie przechowuje tekstu?", "VARCHAR", "TEXT", "DECIMAL", "CHAR", 3, 1),
    (3, "Funkcje", "Która funkcja obliczy średnią?", "AVERAGE()", "AVG()", "ŚREDNIA()", "ŚRD()", 2, 2),
    (4, "Funkcje", "Która funkcja obliczy sumę?", "SUM()", "SUMA()", "SM()", "SUMOF()", 1, 2),
    (5, "Funkcje", "Która funkcja policzy ile jest danych?", "ILE()", "HOWMANY()", "LENGTH()", "COUNT()", 4, 2),
    (6, "Typy danych", "Jaki typ danych użyć aby zapisać liczbe z przecinkiem?", "INT", "VARCHAR", "DECIMAL", "TEXT", 3, 1),
    (7, "Modyfikowanie", "Jakie polecenie służy do edytowania tabeli?", "ALTER TABLE", "EDIT TABLE", "CHANGE TABLE", "MODIFY TABLE", 1, 2),
    (8, "Tworzenie", "Jakie polecenie służy do wprowadzania danych do tabli?", "ADD DATA", "INSERT INTO", "INSERT IN", "SET DATA", 2, 2),
    (9, "Tworzenie", "Jakie polecenie utworzy tabelę o nazwie klienci?", "CREATE TABLE klienci", "TABLE klienci", "ADD TABLE klienci", "NEW TABLE klienci", 1, 1),
    (10, "Inne", "Czym jest SUM", "Rybą", "Funkcją", "Poleceniem", "Nie ma takiej rzeczy", 2, 1),
    (11, "Zapytanie", "Jaki warunek wyświetli dane z lat 1999-2001?", "WHERE data BETWEEN 1999 AND 2001", "WHERE YEAR(data) >= 1999 AND YEAR(data) <= 2001", "WHERE data >= 1999 AND data <= 2001", "WHERE data = 1999 AND data = 2000 AND data = 2001", 2, 3),
    (12, "Zapytanie", "Jaki warunek wyświetli dane o id 4?", "WHERE id = 4", "WHERE id == 4", "WHERE id EQUALS 4", "WHERE id IS 4", 1, 2),
    (13, "Funkcje", "Która funkcja zwróci losową liczbę?", "LOS()", "RANDOM()", "LOSOWA()", "RAND()", 4, 2),
    (14, "Funckje", "Z jakiego zakresu wylosuje funkcja ROUND(RAND()*3)", "0-2", "1-3", "2-4", "0-3", 4, 3),
    (15, "kat", "pyt", "1", "2", "3", "4", odp, pkt),
    (16, "kat", "pyt", "1", "2", "3", "4", odp, pkt),
    (17, "kat", "pyt", "1", "2", "3", "4", odp, pkt),
    (18, "kat", "pyt", "1", "2", "3", "4", odp, pkt),
    (19, "kat", "pyt", "1", "2", "3", "4", odp, pkt),
    (20, "kat", "pyt", "1", "2", "3", "4", odp, pkt)