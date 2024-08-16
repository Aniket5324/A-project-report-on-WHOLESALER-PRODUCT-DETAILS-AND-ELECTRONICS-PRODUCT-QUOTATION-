create database project4;
use project4;
create table if not exists customer(
cust_num int primary key,
name varchar(100)not null,
address varchar(100)not null
);

create table if not exists quotation(
quotation_num int primary key,
cust_num int not null,
product_name varchar(200)not null,
amount_quoted int not null,
foreign key(cust_num) references customer (cust_num)
on update cascade
on delete cascade
);

insert into customer
(cust_num,name,address)
values
(1,'Abhi','Kolhapur'),
(2,'Atul','Radhanagri'),
(3,'Abhishek','Kolhapur'),
(4,'Shushant','Sangli'),
(5,'Sourabh','Pune'),
(6,'Vinayak','pune'),
(7,'Akshay','pune');

insert into quotation
(quotation_num,cust_num,product_name,amount_quoted)
values
(1,10,'Book',500),
(2,11,'Mobile Phone',20000),
(3,12,'fridge',25000),
(4,13,'Watch',5000),
(5,14,'Washing Machine',35000),
(6,15,'laptop',40000),
(7,16,'Tablet',15000);

select * from customer;
select * from quotation;

drop table quotation;
drop table custmoer;

select cust_num,name
from customer
where cust_num in (select cust_num from quotation where product_name = 'Washing Machine');

select cust_num,name
from customer
where cust_num in (select cust_num from quotation where product_name = 'fridge');

delete from customer
where address = 'pune';
select * from custmoer;

select * from custmoer
join quotation
on custmoer.cust_num = quotation.cust_num
where amount_quoted > 5000
order by name;










