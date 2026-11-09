-- Zadanie 1.1
create table pracownik (
id_pracownika int auto_increment primary key not null,
imie varchar(40) not null,
nazwisko varchar(40) not null,
data_urodzenia date not null);


-- Zadanie 1.2
INSERT INTO pracownik (imie, nazwisko, data_urodzenia) VALUES
('Jan', 'Kowalski', '1985-03-12'),
('Anna', 'Nowak', '1990-07-25'),
('Piotr', 'Wiśniewski', '1978-11-05');


-- Zadanie 1.3
UPDATE pracownik
SET data_urodzenia = '1986-04-15'
WHERE id_pracownika = 1;
	




