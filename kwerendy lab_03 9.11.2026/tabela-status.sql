-- Zadanie 5.1
create table status(
id_statusu int auto_increment primary key not null,
nazwa_statusu varchar(20));


-- Zadanie 5.2
INSERT INTO status (nazwa_statusu) VALUES
('nowy'),
('w trakcie'),
('zakończony');
