create database Project3;
use Project3;

create table wholesaler(
w_num int primary key,
w_name varchar(100) not null,
address varchar(200) not null,
city varchar(100) not null
);
create table product(
w_num int primary key,
product_num int not null,
product_name varchar(200) not null
);

insert into wholesaler
(w_num,w_name,address,city)
values
(1,'Abhi','Shiroli','Kolhapur'),
(2,'Atul','Titve','Radhanagri'),
(3,'Abhishek','Gandhinagar','Kolhapur'),
(4,'Shushant','Dhudhgav','Sangli'),
(5,'Sourabh','Shiavji Nagar','Pune'),
(6,'Vinayak','Karjat','Ahmednagar'),
(7,'Akshay','Shaniwar wada','pune');

insert into product
(w_num,product_num,product_name)
values
(1,10,'Book'),
(2,11,'Mobile Phone'),
(3,12,'Refrigerator'),
(3,13,'Watch'),
(4,14,'Washing Machine'),
(5,15,'laptop'),
(6,16,'Tablet'),
(7,17,'Heater');

select * from wholesaler;
select * from product;

select w_num in ( select w_num from product where product_name = 'Book');

select count(w_num)
from wholesaler
where city = 'Ahmednagar';

insert into wholesaler
(w_num,w_name,address,city)
values 
(8,'Shubham','Herle','Kolhapur');

select * from wholesaler;

select w.w_name,p.product_name
from wholesaler w
join product p
on w.w_num = p.w_num;










