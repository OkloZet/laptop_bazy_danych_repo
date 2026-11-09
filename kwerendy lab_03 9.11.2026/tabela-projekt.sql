-- Zadanie 3.1
create table projekt(
id_projektu int auto_increment primary key not null,
nazwa_projektu varchar(150) not null,
data_rozpoczecia date not null,
data_zakonczenia date);


-- Zadanie 3.2
alter table projekt
add menedzer_projektu int,
add constraint fk_prapro foreign key (menedzer_projektu) references pracownik(id_pracownika);


-- Zadanie 3.3
INSERT INTO projekt (nazwa_projektu, data_rozpoczecia, data_zakonczenia) VALUES
('Projekt Alfa', '2024-01-10', '2024-06-30'),
('Projekt Beta', '2024-03-01', NULL);


-- Zadanie 5.5
DELETE FROM projekt
WHERE id_projektu = 1;
