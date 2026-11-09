-- Zadanie 5.3
create table zadanie_has_status(
id_zdarzenia int auto_increment primary key not null,
id_zadania int,
id_statusu int,
data_zdarzenia datetime default(current_timestamp()),
constraint fk_zadzhs foreign key (id_zadania) references zadanie(id_zadania));


-- Zadanie 5.4
INSERT INTO zadanie_has_status (id_zadania, id_statusu, data_zdarzenia) VALUES
(1, 1, '2024-01-15 09:00:00'),
(2, 2, '2024-02-20 13:30:00'),
(3, 3, '2024-03-25 16:45:00');