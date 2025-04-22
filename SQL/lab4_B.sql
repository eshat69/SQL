drop table sales cascade constraints;

create table sales(
    id number(10),
    product varchar2(10),
    category varchar2(10),
    quantity number(10),
    price number(10)
);

insert into sales values (1, 'Phone', 'Mobile', 5, 200);
insert into sales values (2, 'Phone', 'Computer', null, 200);
insert into sales values (3, 'Laptop', 'Computer', null, 800);
insert into sales values (4, 'Tablet', 'Mobile', 4, 300);
insert into sales values (5, 'Phone', 'Computer', 2, 150);


select count(*) as total_sales from sales;
select count(quantity) as total_sales from sales;
select sum(quantity) as total_quantity from sales;
select count(distinct product), count(all product), count(product) from sales;
--later two is same
select max(product) as max_price from sales;

/*
COUNT, MIN, and MAX apply to numeric and non-numeric fields, but SUM and
AVG may be used on numeric fields only.
Apart from COUNT(*), each function eliminates nulls first and operates only on
remaining non-null values.
COUNT(*) counts all rows of a column, regardless of whether nulls or duplicate
values occur.
*/

select product, sum(price) as total_price from sales group by product order by total_price desc;
select product, category, sum(price) as total_price from sales group by product, category;

select count(category), category, sum(quantity) as total_quatity, sum(price), avg(price) from sales group by category;
select category, avg(price) as avg_price_greater_than_300 from sales group by category having avg(price) > 300;


select avg(nvl(quantity, 10)) as avg_quantity from sales;
--all null value will be replaced by 10

select quantity, sum(price) from sales group by quantity;
/*
When you GROUP BY a column that contains NULL values for some rows, all the
rows with NULL values are placed into a single group and presented as one summary
row in the output
*/


select product, price from sales group by product, price having price >= 200;
select product from sales group by product having sum(quantity) > 5;
/*
A HAVING condition can refer only to an expression in the SELECT list, 
or to an expression involving an aggregate function.
*/