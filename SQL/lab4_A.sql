drop table dependent cascade constraints;
drop table employee cascade constraints;
drop table department cascade constraints;

create table department (
    dname varchar2(20),
    dnumber number(2) primary key,
    mgrssn number(10),
    mgrstartdate date
);

create table employee(
    fname varchar2(15),
    minit varchar2(2),
    lname varchar2(15),
    ssn number(10) not null,
    bdate date,
    address varchar2(35),
    sex varchar2(1),
    salary number(7) not null,
    superssn number(10),
    dno number(2) not null,
    primary key(ssn),
    foreign key(dno) references department(dnumber) on delete cascade
);

create table dependent(
    dependent_name varchar2(15),
    essn number(10),
    sex varchar2(1),
    bdate date,
    relationship varchar2(10),
    primary key(essn, dependent_name),
    foreign key(essn) references employee(ssn) on delete cascade
);

insert into department values('Research', 1, 23234, '12-April-2002');
insert into department values('administration', 2, 3543545, '13-April-2002');
insert into department values('headquater', 4, 64645, '15-April-2004');

insert into employee values('ehtesam', 'C', 'zunnuryn', 323, '10-October-2000', 'Dhaka', 'M', '25000', 12, '1');
insert into employee values('kamal', 'C', 'ahmed', 23, '6-October-2000', 'Mirpur', 'M', '28000', 132, '1');
insert into employee values('sabrina', 'R', 'rahman', 231, '15-November-1996', 'Rajarbag', 'F', '35000', 199, '4');
insert into employee values('sadia', 'C', 'rahman', 199, '15-November-1996', 'Rajarbag', 'F', '35000', 102, '4');
insert into employee values('Rajjak', 'T', 'Hossain', 189, '19-November-1996', 'Bhairab', 'M', '70000', 111, '2');
insert into employee values('Rifat', 'K', 'Hossain', 209, '19-November-1997', 'Bhairab', 'M', '10000', 171, '2');

insert into dependent values('sadia', 323, 'F', '10-October-2003', 'daughter');
insert into dependent values('Malaika', 23, 'F', '10-January-2005', 'daughter');
insert into dependent values('Jamal', 323, 'M', '20-January-2005', 'son');
insert into dependent values('Ridha', 231, 'F', '10-October-2003', 'spouse');

select * from employee;
select dno from employee;
select distinct dno from employee;

select fname, lname, salary from employee order by salary desc;
select salary/5 as salary_divide_5 from employee where dno = 2;
select fname, lname, salary, dno from employee where dno > 1 and salary < 30000;
select fname, salary from employee where salary between 40000 and 90000;
select fname, salary from employee where salary not between 40000 and 90000;
select fname, salary from employee where salary in(25000, 70000); --examctly 25k, 70k
select fname, salary from employee where salary not in(25000, 70000); --w/o these two

/*
like keyword
LIKE 'A%' will match any string that starts with "A" (e.g., "Apple", "Alligator").
LIKE '%a' will match any string that ends with "a" (e.g., "Banana", "Panda").
LIKE '%or%' will match any string that contains "or" (e.g., "Door", "Floor").
*/

select fname, address from employee where address like '%Raja%';

--multiple column ordering
select fname, dno, salary from employee order by dno, salary desc;


