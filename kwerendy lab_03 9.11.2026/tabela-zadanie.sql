-- Zadanie 2.1
create table zadanie (
id_zadania int auto_increment primary key not null,
nazwa_zadania varchar(150) not null,
priorytet enum('normalny', 'wysoki', 'niski'),
opis TEXT, 
pracownik int,
CONSTRAINT fk_prazad FOREIGN key (pracownik) REFERENCES pracownik(id_pracownika));


-- Zadanie 2.2
alter table zadanie
modify column priorytet enum('normalny', 'wysoki', 'niski') default('normalny');


-- Zadanie 2.3
INSERT INTO zadanie (nazwa_zadania, priorytet, opis, pracownik) VALUES
('Przygotowanie raportu', 'wysoki', 'Raport miesięczny', 1),
('Aktualizacja bazy danych', 'normalny', 'Porządki w danych', 2),
('Testy aplikacji', 'niski', 'Testy regresyjne', 3);


-- Zadanie 3.4
alter table zadanie
add projekt int,
add constraint fk_prozad foreign key (projekt) references projekt(id_projektu) on delete cascade;


-- Zadanie 3.5
UPDATE zadanie
SET projekt = 1
WHERE id_zadania = 1;

UPDATE zadanie
SET projekt = 2
WHERE id_zadania = 2;

UPDATE zadanie
SET projekt = 1
WHERE id_zadania = 3;


-- Zadanie 4.2
alter table zadanie 
add sprint int,
add constraint fk_sprzad foreign key (sprint) references sprint_id(sprint);


-- Zadanie 4.3
UPDATE zadanie
SET sprint = 1
WHERE id_zadania IN (1, 2);


-- Zadanie 5.5 
SELECT * FROM zadanie WHERE projekt = 1;


-- Zadanie 5.6
ALTER TABLE zadanie DROP FOREIGN KEY sprint;