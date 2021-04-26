CREATE TABLE pytania(
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    kategoria VARCHAR(20) NOT NULL,
    pytanie VARCHAR(100) NOT NULL, 
    odpowiedz1 VARCHAR(20) NOT NULL,
    odpowiedz2 VARCHAR(20) NOT NULL,  
    odpowiedz3 VARCHAR(20) NOT NULL,
    odpowiedz4 VARCHAR(20) NOT NULL,
    poprawnaOdpowiedz INT NOT NULL
);

INSERT INTO pytania
VALUES
    (1, "Usuwanie", "Które polecenie usunie całą bazę danych?", "DROP TABLE", "DROP DATABASE", "DELETE DATABASE", "DELETE TABLE", 2),
    (2, "Typy danych", "Jaki typ danych nie przechowuje tekstu?", "VARCHAR", "TEXT", "DECIMAL", "CHAR", 3),
    (3, "Funkcje", "Która funkcja obliczy średnią?", "AVERAGE()", "AVG()", "ŚREDNIA()", "ŚRD()", 2),
    (4, "Funkcje", "Która funkcja obliczy sumę?", "SUM()", "SUMA()", "SM()", "SUMOF()", 1),
    (5, "Funkcje", "Która funkcja policzy ile jest danych?", "ILE()", "HOWMANY()", "LENGTH()", "COUNT()", 4),
    (6, "Typy danych", "Jaki typ danych użyć aby zapisać liczbe z przecinkiem?", "INT", "VARCHAR", "DECIMAL", "TEXT", 3),
    (7, "Modyfikowanie", "Jakie polecenie służy do edytowania tabeli?", "ALTER TABLE", "EDIT TABLE", "CHANGE TABLE", "MODIFY TABLE", 1),
    (8, "Tworzenie", "Jakie polecenie służy do wprowadzania danych do tabli?", "ADD DATA", "INSERT INTO", "INSERT IN", "SET DATA", 2),
    (9, "Tworzenie", "Jakie polecenie utworzy tabelę o nazwie klienci?", "CREATE TABLE klienci", "TABLE klienci", "ADD TABLE klienci", "NEW TABLE klienci"),
    (10, "Czym jest SUM()", "rybą", "funkcją")