CREATE TABLE nazwisko(
	nazwisko_id INT NOT NULL AUTO_INCREMENT,
	nazwisko VARCHAR(40) NOT NULL,
	PRIMARY KEY(nazwisko_id)
);

CREATE TABLE imie(
	imie_id INT NOT NULL AUTO_INCREMENT,
	imie VARCHAR(40) NOT NULL,
	PRIMARY KEY(imie_id)
);

CREATE TABLE klasa(
	klasa_id INT NOT NULL AUTO_INCREMENT,
	klasa VARCHAR(9) NOT NULL,
	PRIMARY KEY(klasa_id)
);

CREATE TABLE miejsce_zamieszkania(
	miejsce_zamieszkania_id INT NOT NULL AUTO_INCREMENT,
	miejsce_zamieszkania VARCHAR(50) NOT NULL,
	PRIMARY KEY(miejsce_zamieszkania_id)
);

CREATE TABLE Uczniowie(
	id INT NOT NULL AUTO_INCREMENT,
	nazwisko_id INT NOT NULL,
	imie_id INT NOT NULL,
	klasa_id INT NOT NULL,
	miejsce_zamieszkania_id INT NOT NULL,
	data_urodzenia DATE NOT NULL,
	telefon INT(9) NOT NULL,
	PRIMARY KEY(id)
);

INSERT INTO imie(imie)
VALUES
	('Adam'),
	('Artur'),
	('Marek'),
	('Anna'),
	('Wlademar'),
	('Wioletta'),
	('Jakub'),
	('Monika'),
	('Jarosław'),
	('Rafał'),
	('Aleksandra'),
	('Robert'),
	('Magdalena'),
	('Róża');

INSERT INTO nazwisko(nazwisko)
VALUES
	('Andrzejczak'),
	('Borowicz'),
	('Cybul'),
	('Dębowska'),
	('Jędrych'),
	('Kowalik'),
	('Lorentz'),
	('Muszyńska'),
	('Nowak'),
	('Oparczyk'),
	('Oller'),
	('Priewe'),
	('Spitza'),
	('Sikorska'),
	('Tomczak');

INSERT INTO klasa(klasa)
VALUES
	('III A'),
	('III B'),
	('III C');

INSERT INTO miejsce_zamieszkania(miejsce_zamieszkania)
VALUES
	('Bydgoszcz'),
	('Koronowo'),
	('Białe Błota'),
	('Szubin'),
	('Nakło nad Notecią'),
	('Inowrocław'),
	('Otorowo');


INSERT INTO Uczniowie(nazwisko_id, imie_id, klasa_id, miejsce_zamieszkania_id, data_urodzenia, telefon)
VALUES
	(1, 1, 3, 1, '1995-02-12', 634213643),
	(2, 2, 2, 2, '1995-11-21', 829192322),
	(3, 3, 3, 1, '1995-08-30', 509834231),
	(4, 4, 1, 3, '1995-06-12', 526643983),
	(5, 5, 2, 1, '1995-02-21', 645543234),
	(6, 6, 3, 4, '1995-10-23', 643212322),
	(7, 7, 1, 1, '1995-01-04', 523437456),
	(8, 8, 2, 1, '1995-06-17', 524312345),
	(9, 9, 3, 5, '1995-03-12', 675423325),
	(10, 10, 1, 1, '1995-12-22', 543453321),
	(11, 11, 2, 6, '1995-11-04', 524365421),
	(12, 12, 1, 1, '1995-02-15', 524323423),
	(13, 1, 3, 3, '1995-08-23', 506231334),
	(14, 13, 2, 7, '1995-04-05', 607543543),
	(15, 14, 1, 1, '1995-04-18', 524323244);

SELECT nazwisko.nazwisko, imie.imie, klasa.klasa, miejsce_zamieszkania.miejsce_zamieszkania, Uczniowie.data_urodzenia, Uczniowie.Telefon
FROM klasa INNER JOIN (nazwisko INNER JOIN (miejsce_zamieszkania INNER JOIN (imie INNER JOIN Uczniowie ON imie.imie_id = Uczniowie.imie_id) ON miejsce_zamieszkania.miejsce_zamieszkania_id = Uczniowie.miejsce_zamieszkania_id) ON nazwisko.nazwisko_id = Uczniowie.nazwisko_id) ON klasa.klasa_id = Uczniowie.klasa_id
WHERE (((klasa.klasa)="III B"));

SELECT nazwisko.nazwisko, imie.imie, klasa.klasa, miejsce_zamieszkania.miejsce_zamieszkania, uczniowie.data_urodzenia, Uczniowie.Telefon
FROM klasa INNER JOIN (nazwisko INNER JOIN (miejsce_zamieszkania INNER JOIN (imie INNER JOIN Uczniowie ON imie.imie_id = Uczniowie.imie_id) ON miejsce_zamieszkania.miejsce_zamieszkania_id = Uczniowie.miejsce_zamieszkania_id) ON nazwisko.nazwisko_id = Uczniowie.nazwisko_id) ON klasa.klasa_id = Uczniowie.klasa_id
WHERE Month(Uczniowie.data_urodzenia) = Month('1996-07-01') OR Month(Uczniowie.data_urodzenia) = Month('1996-08-01'); 

SELECT klasa.klasa, Count(Uczniowie.klasa_id) AS ilosc
FROM klasa INNER JOIN Uczniowie ON klasa.klasa_id = Uczniowie.klasa_id
GROUP BY klasa.klasa;

/*
CREATE TABLE IF NOT EXISTS `2ptn_szymon_rychter`.`13_uczniowie` (`Nazwisko` varchar(12), `Imie` varchar(10), `Klasa` varchar(9), `Miejsce zamieszkania` varchar(17), `Data urodzenia` varchar(10), `Telefon` int(9)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

INSERT INTO  (Nazwisko, Imie, Klasa, Miejsce zamieszkania, Data urodzenia, Telefon) 
VALUES 
 ('Andrzejczak ', 'Adam', 'III C', 'Bydgoszcz', '12.02.1995', 634213643),
 ('Borowicz', 'Artur'   , 'III B', 'Koronowo', '21.11.1995', 829192322),
 ('Cybul', 'Marek',       'III C', 'Bydgoszcz', '30.08.1995', 509834231),
 ('Dębowska', 'Anna    ', 'III A', 'Białe Błota', '12.06.1995', 526643983),
 ('Jędrych', 'Wladem ar', 'III B', 'Bydgoszcz', '21.02.1995', 645543234),
 ('Kowalik ', 'Wioletta', 'III C', 'Szubin', '23.10.1995', 643212322),
 ('Lorentz', 'Jakub'    , 'III A', 'Bydgoszcz', '04.01.1995', 523437456),
 ('Muszyńska', 'Monika ', 'III B', 'Bydgoszcz', '17.06.1995', 524312345),
 ('Nowak', 'Jarosław   ', 'III C', 'Nakło nad Notecią', '12.03.1995', 675423325),
 ('Oparczyk', 'Raf   ał', 'III A', 'Bydgoszcz', '22.12.1995', 543453321),
 ('Oller', 'Aleksa ndra', 'III B', 'Inowrocław', '04.11.1995', 524365421),
 ('Priewe', 'Robert    ', 'III A', 'Bydgoszcz', '15.02.1995', 524323423),
 ('Spitza', 'Adam      ', 'III C', 'Białe Błota', '23.08.1995', 506231334),
 ('Sikorska', 'Mgdalena', 'III B', 'Otorowo', '05.04.1995', 607543543),
 ('Tomczak', 'Róża',      'III A', 'Bydgoszcz', '18.04.1995', 524323244);
 
INSERT INTO 
*/