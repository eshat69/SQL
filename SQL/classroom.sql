create database collage;
use collage ;
create table student (
 id int primary key ,
 name varchar(50) ,
 age int not null
);
insert into student values (1 , "gigi",21) ;
insert into student values (2 , "awry",20) ; 
select * from student ;
create database if not exists collage;
drop database if exists sdjk ;
show table  ;