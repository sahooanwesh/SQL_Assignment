create database if not exists newdb;
use newdb;
show tables;

CREATE TABLE if not exists salespeople (
Snum int unsigned,
 Sname varchar(20) not null default '',
 City varchar(15) not null default '',
 Comm int ,
 primary key (Snum)
 );
 
  desc salespeople;
  
INSERT INTO salespeople
VALUES(1001, 'Peel' , 'London' , 12),
(1002 , 'Serres' ,'Sanjose' , 13),
(1004 ,'Motika', 'London' , 11),
(1007, 'Rifkin', 'Barcelona', 15),
(1003, 'Axelrod', 'Newyork', 10);

select*from salespeople;

CREATE TABLE if not exists customers (
Cnum int unsigned,
 Cname varchar(20) not null default '',
 City varchar(15) not null default '',
 Snum int ,
 primary key (Cnum)
 );
 
 desc customers;
 
INSERT INTO customers
VALUES (2001,  'Hoffman', 'London',1001),
(2002,  'Giovanni', 'Rome', 1003),
(2003,  'Liu', 'Sanjose', 1002),
(2004,  'Grass', 'Berlin', 1002),
(2006, 'Clemens', 'london', 1001),
(2008, 'Cisneros', 'Sanjose', 1007),
(2007, 'Pereira', 'Rome', 1004);

select * from customers;

CREATE TABLE if not exists orders (
Onum int unsigned,
 Amt decimal ,
 Odate date ,
 Cnum int ,
 Snum int ,
 primary key (Onum)
 );
 
desc orders;
 
INSERT INTO orders
VALUES (3001, 18.69, '1990-10-03', 2008, 1007),
(3003, 767.19, '1990-10-03', 2001, 1001),
(3002, 1900.10, '1990-10-03', 2007, 1004),
(3005,  5160.45, '1990-10-03', 2003, 1002),
(3006,  1098.16, '1990-10-03', 2008, 1007),
(3009, 1713.23, '1990-10-04', 2002, 1003),
(3007,  75.75, '1990-10-04', 2004, 1002),
(3008,  4273.00, '1990-10-05', 2006, 1001),
(3010,  1309.95, '1990-10-06', 2004, 1002),
(3011,  9891.88, '1990-10-06', 2006, 1001);

select * from orders;

--  Count the number of Salesperson whose name begin with ‘a’/’A’.
select * from salespeople where Sname like 'A%' ;

--  Display all the Salesperson whose all orders worth is more than Rs. 2000.
select * from orders where Amt > 2000;

-- Count the number of Salesperson belonging to Newyork.
select count(*) from salespeople where City = 'Newyork' ;

--  Display the number of Salespeople belonging to London and belonging to Paris.
select * from salespeople where City in ('London' , 'paris'); 

-- Display the number of orders taken by each Salesperson and their date of orders.
select Snum, Odate from orders group by Snum, Odate;


