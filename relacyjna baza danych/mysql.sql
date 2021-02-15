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

CREATE TABLE nazwisko(
	id INT NOT NULL AUTO_INCREMENT,
	nazwisko VARCHAR(30) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE imie(
	id INT NOT NULL AUTO_INCREMENT,
	imie VARCHAR(20) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE klasa(
	id INT NOT NULL AUTO_INCREMENT,
	klasa VARCHAR(9) NOT NULL,
	PRIMARY KEY(id)
);

/*

CREATE TABLE IF NOT EXISTS `2ptn_szymon_rychter`.`13_uczniowie` (`Nazwisko` varchar(12), `Imie` varchar(10), `Klasa` varchar(9), `Miejsce zamieszkania` varchar(17), `Data urodzenia` varchar(10), `Telefon` int(9)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

INSERT INTO  (Nazwisko, Imie, Klasa, Miejsce zamieszkania, Data urodzenia, Telefon) 
VALUES 
 ('Andrzejczak ', 'Adam', 'III C', 'Bydgoszcz', '12.02.1995', 634213643),
 ('Borowicz', 'Artur', 'III B', 'Koronowo', '21.11.1995', 829192322),
 ('Cybul', 'Marek', 'III C', 'Bydgoszcz', '30.08.1995', 509834231),
 ('Dębowska', 'Anna', 'III A', 'Białe Błota', '12.06.1995', 526643983),
 ('Jędrych', 'Wlademar', 'III B', 'Bydgoszcz', '21.02.1995', 645543234),
 ('Kowalik ', 'Wioletta', 'III C', 'Szubin', '23.10.1995', 643212322),
 ('Lorentz', 'Jakub', 'III A', 'Bydgoszcz', '04.01.1995', 523437456),
 ('Muszyńska', 'Monika', 'III B', 'Bydgoszcz', '17.06.1995', 524312345),
 ('Nowak', 'Jarosław', 'III C', 'Nakło nad Notecią', '12.03.1995', 675423325),
 ('Oparczyk', 'Rafał', 'III A', 'Bydgoszcz', '22.12.1995', 543453321),
 ('Oller', 'Aleksandra', 'III B', 'Inowrocław', '04.11.1995', 524365421),
 ('Priewe', 'Robert', 'III A', 'Bydgoszcz', '15.02.1995', 524323423),
 ('Spitza', 'Adam', 'III C', 'Białe Błota', '23.08.1995', 506231334),
 ('Sikorska', 'Magdalena', 'III B', 'Otorowo', '05.04.1995', 607543543),
 ('Tomczak', 'Róża', 'III A', 'Bydgoszcz', '18.04.1995', 524323244);
 
INSERT INTO 
*/