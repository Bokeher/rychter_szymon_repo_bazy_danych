-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 30 Maj 2021, 19:10
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `testbazadanych`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `id` int(11) NOT NULL,
  `kategoria` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `kategorie`
--

INSERT INTO `kategorie` (`id`, `kategoria`) VALUES
(1, 'Usuwanie'),
(2, 'Typy danych'),
(3, 'Funkcje'),
(4, 'Modyfikowanie'),
(5, 'Tworzenie'),
(6, 'Inne'),
(7, 'Zapytanie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pytania`
--

CREATE TABLE `pytania` (
  `id` int(11) NOT NULL,
  `kategoria_id` int(11) NOT NULL,
  `pytanie` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `odpowiedz1` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `odpowiedz2` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `odpowiedz3` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `odpowiedz4` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `poprawneOdpowiedzi` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `ilosc_punktow` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pytania`
--

INSERT INTO `pytania` (`id`, `kategoria_id`, `pytanie`, `odpowiedz1`, `odpowiedz2`, `odpowiedz3`, `odpowiedz4`, `poprawneOdpowiedzi`, `ilosc_punktow`) VALUES
(1, 1, 'Które polecenie usunie całą bazę danych?', 'DROP TABLE', 'DROP DATABASE', 'DELETE DATABASE', 'DELETE TABLE', '2', 1),
(2, 2, 'Jaki typ danych nie przechowuje tekstu?', 'VARCHAR', 'TEXT', 'DECIMAL', 'CHAR', '3', 1),
(3, 3, 'Która funkcja obliczy średnią?', 'AVERAGE()', 'AVG()', 'ŚREDNIA()', 'ŚRD()', '2', 2),
(4, 3, 'Która funkcja obliczy sumę?', 'SUM()', 'SUMA()', 'SM()', 'SUMOF()', '1', 2),
(5, 3, 'Która funkcja policzy ile jest danych?', 'ILE()', 'HOWMANY()', 'LENGTH()', 'COUNT()', '4', 2),
(6, 2, 'Jaki typ danych użyć aby zapisać liczbę z przecinkiem?', 'INT', 'VARCHAR', 'DECIMAL', 'TEXT', '3', 1),
(7, 4, 'Jakie polecenie służy do edytowania tabeli?', 'ALTER TABLE', 'EDIT TABLE', 'CHANGE TABLE', 'MODIFY TABLE', '1', 2),
(8, 5, 'Jakie polecenie służy do wprowadzania danych do tabeli?', 'ADD DATA', 'INSERT INTO', 'INSERT IN', 'SET DATA', '2', 2),
(9, 5, 'Jakie polecenie utworzy tabelę o nazwie klienci?', 'CREATE TABLE klienci', 'TABLE klienci', 'ADD TABLE klienci', 'NEW TABLE klienci', '1', 1),
(10, 6, 'Czym jest SUM?', 'Rybą', 'Funkcją', 'Poleceniem', 'Nie ma takiej rzeczy', '2', 1),
(11, 7, 'Jaki warunek wyświetli dane z lat 1999-2001?', 'WHERE data BETWEEN 1999 AND 2001', 'WHERE YEAR(data) >= 1999 AND YEAR(data) <= 2001', 'WHERE data >= 1999 AND data <= 2001', 'WHERE data = 1999 AND data = 2000 AND data = 2001', '2', 3),
(12, 7, 'Jaki warunek wyświetli dane o id 4?', 'WHERE id = 4', 'WHERE id == 4', 'WHERE id EQUALS 4', 'WHERE id IS 4', '1', 2),
(13, 3, 'Która funkcja zwróci losową liczbę?', 'LOS()', 'RANDOM()', 'LOSOWA()', 'RAND()', '4', 2),
(14, 3, 'Z jakiego zakresu wylosuje funkcja ROUND(RAND()*3)?', '0-2', '1-3', '2-4', '0-3', '4', 3),
(15, 7, 'Jakie polecenie wyświetli wszystkie osoby o imieniu Adam?', 'SELECT * FROM imiona WHERE imie == \'Adam\'', 'SELECT * FROM imiona WHERE imie = \'Adam\'', 'SELECT * FROM imiona WHERE imie \'Adam\'', 'SELECT all FROM imiona WHERE imie = \'Adam\'', '1', 2),
(16, 6, 'Jakie jest rozwinięcie skrótu SQL?', 'Strong Question Language', 'Structured Query Language', 'Structured Query Language', 'Structured Question Language', '2', 1),
(17, 7, 'Które zapytanie wyświetli wszystkie dane z tabeli \'uczniowie\'?', 'SELECT * FROM uczniowie', 'SELECT all FROM uczniowie', 'SELECT EVERYTHING FROM uczniowie', 'SELECT [all] FROM uczniowie', '1', 1),
(18, 7, 'Jakie zapytanie wyswieli wszystkie miasta zaczynajace sie na N?', 'SELECT * FROM miasta WHERE miasto LIKE \'%a\' ', 'SELECT * FROM miasta WHERE miasto LIKE \'a%\'', 'SELECT * FROM miasta WHERE miasto STARTSWITH \'a\'', 'SELECT * FROM miasta WHERE miasto LIKE \'a*\'', '2', 2),
(19, 3, 'Które zapytanie wyświetli liczbę z zakresu 1-4?', 'SELECT ROUND(RAND()*3+1)', 'SELECT ROUND(RAND()*4)', 'SELECT ROUND(RAND()*4-1)', 'SELECT ROUND(RAND()*3+(2-1))', '1, 4', 2),
(20, 7, 'Jakie polecenie wyświetli nazwiska osób o imieniu Tomasz?', 'SELECT nazwisko FROM dane WHERE imie = \'Tomasz\'', 'SELECT nazwisko FROM dane WHERE dane.imie = \'Tomasz\'', 'SELECT nazwisko FROM dane WHERE imie == \'Tomasz\'', 'SELECT nazwisko FROM dane WHERE imie EQUALS \'Tomasz\'', '1, 2', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `uzytkownik_id` int(11) NOT NULL,
  `test_nr` int(11) NOT NULL,
  `pytanie_id` int(11) NOT NULL,
  `odpowiedz` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `czas[s]` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `test`
--

INSERT INTO `test` (`id`, `uzytkownik_id`, `test_nr`, `pytanie_id`, `odpowiedz`, `czas[s]`) VALUES
(1, 1, 1, 11, '2', 58),
(2, 2, 1, 14, '3', 13),
(3, 1, 1, 13, '4', 46),
(4, 1, 1, 1, '4', 17),
(5, 2, 1, 4, '2', 6),
(6, 2, 1, 7, '1, 4', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `haslo` char(32) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `nazwa`, `email`, `haslo`) VALUES
(1, 'Maciek2004', 'Maciek200004@gmail.com', 'a4f8202dca62cd4cd6598b115837d3ec'),
(2, 'Tompek123', 'Tompek2115@gmail.com', '92d75dbfc3b273c879c7cd0c606149c8');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategoria_id` (`kategoria_id`);

--
-- Indeksy dla tabeli `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uzytkownik_id` (`uzytkownik_id`,`pytanie_id`),
  ADD KEY `pytanie_id` (`pytanie_id`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `pytania`
--
ALTER TABLE `pytania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `pytania`
--
ALTER TABLE `pytania`
  ADD CONSTRAINT `pytania_ibfk_1` FOREIGN KEY (`kategoria_id`) REFERENCES `kategorie` (`id`);

--
-- Ograniczenia dla tabeli `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`uzytkownik_id`) REFERENCES `uzytkownicy` (`id`),
  ADD CONSTRAINT `test_ibfk_2` FOREIGN KEY (`pytanie_id`) REFERENCES `pytania` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
