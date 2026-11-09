-- Zadanie 4.1
create table sprint(
id_sprintu int auto_increment primary key not null,
numer_sprintu int unsigned not null,
data_rozpoczecia date not null,
data_zakonczena date);


-- Zadanie 4.3 
INSERT INTO sprint (numer_sprintu, data_rozpoczecia, data_zakonczenia) VALUES
(1, '2024-01-01', '2024-01-14');


-- Zadanie 5.6 
DROP TABLE sprint;