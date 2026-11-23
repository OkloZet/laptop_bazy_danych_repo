-- Zad 1.1
CREATE TABLE client AS SELECT * FROM company_2025.CLIENT;
CREATE TABLE orders AS SELECT * FROM company_2025.ORDER;
CREATE TABLE employee AS SELECT * FROM company_2025.EMPLOYEE;

-- Zad 1.2
Select * from orderr;

-- Zad 1.3
Select * from orderr where ORDER_STATUS = 5;

-- Zad 1.4
Select ORDER_ID, ORDER_STATUS, CLIENT_ID from orderr where CLIENT_ID = 1 or CLIENT_ID = 3 or CLIENT_ID = 5 order by client_id asc;

-- Zad 2.1
Select * from employee where FIRST_NAME = 'Agnieszka' and pensja = 3900;

-- Zad 2.2
Select * from employee where pensja >= 5000 and pensja <= 7000;

-- Zad 2.3
Select * from client where SHORT_NAME LIKE '%eco%' and IS_COMPANY = 1;

-- Zad 3.1
Select * from orders where month(ORDER_DATE) = 06 or month(ORDER_DATE) = 07;

-- Zad 3.2
Select * from client where TAX_IDENTIFIER is not null order by SHORT_NAME asc;

-- Zad 3.3
Select * from employee order by DATE_OF_EMPLOYMENT asc limit 5;

-- Zad 4.1
Select distinct FIRST_NAME from employee;

-- Zad 4.2
Select concat(FIRST_NAME, '-', LAST_NAME) as 'IMIE-NAZWISKO' from employee where LAST_NAME like 'Ko%';

-- Zad 4.3
Select LAST_NAME, pensja from employee where year(DATE_OF_EMPLOYMENT) >=2010 and year(DATE_OF_EMPLOYMENT) <=2014;

-- Zad 5.1
Select pensja, (pensja - (pensja*0.25)) as 'pensja_bez_podatku', (pensja*0.25) as 'podatek' from employee;

-- Zad 5.2
Select * from client where TAX_IDENTIFIER is null;

-- Zad 5.3
Select SHORT_NAME from client  where SHORT_NAME like 'K%' or SHORT_NAME like '%ski' order by SHORT_NAME desc;
