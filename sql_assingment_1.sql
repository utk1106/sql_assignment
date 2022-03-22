Create table salespeople 
( 
snum int(4), 
sname char(10), 
city char(10), 
comm decimal(3,2) 
); 

Create table customers 
( 
cnum int(4), 
cname char(10), 
city char(10), 
snum int(4) 
); 

Create table orders 
( 
onum int(4), 
amt decimal(7,2), 
odate date, 
cnum int(4), 
snum int(4) 
); 

insert into salespeople values(1001, "Peel", "London",.12),(1002,"Serres", "Sanjose",.13),
(1004,"Motika","London",.11),(1007,"Rifin","Barcelona",.15),(1003,"Axelrod","Newyork",.10);

select *from salespeople;

insert into customers values(2001, "Hoffman", "London", 1001),(2002,"Giovanni", "Rome", 1003),
(2003,"Liu", "Sanjose", 1002),(2004,"Grass", "Berlin", 1002),(2006,"Clemens","London", 1001),(2008,"Cisneros", "Sanjose",1007),(2007,"Pereira", "Rome", 1004);

select *from customers;

insert into orders values(3001, 18.69, '1990-10-3', 2008, 1007),(3003, 767.19, '1990-10-3', 2001, 1001),
 (3002, 1900.10, '1990-10-3', 2007, 1004),(3005,  5160.45, '1990-10-3', 2003, 1002),(3006,  1098.16, '1990-10-3', 2008, 1007),
 (3009, 1713.23, '1990-10-4', 2002, 1003),(3007,  75.75, '1990-10-4', 2004, 1002),(3008,  4273.00, '1990-10-5', 2006, 1001),(3010,  1309.95, '1990-10-6', 2004, 1002),
 (3011,  9891.88, '1990-10-6', 2006, 1001);
 
 select *from orders;
 
 -- 1. Count the number of Salesperson whose name begin with ‘a’/’A’.
 
 select *from salespeople where sname like 'a%' or sname like 'A%';  -- solution of que 1
 
 -- 2. Display all the Salesperson whose all orders worth is more than Rs. 2000
 
 select *from orders where amt>2000; -- soln of que 2
 
 -- 3. Count the number of Salesperson belonging to Newyork.
 
 select *from salespeople where city like 'Newyork%'; -- solution of que 3
 
 -- 4. Display the number of Salespeople belonging to London and belonging to Paris.
 
 select *from salespeople where city like 'Newyork%' and city like 'Paris%'; -- solution to que 4
 
 -- 5. Display the number of orders taken by each Salesperson and their date of orders.
 
select onum, odate
from orders;

select count(onum)
from orders;
 
 -- soln to que 5




