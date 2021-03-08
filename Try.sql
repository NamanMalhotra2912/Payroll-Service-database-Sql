show databases;
select * from employee_payroll;
create database Employee_Payroll;
show databases;
use Employee_Payroll;
create table employee_payroll(id Integer not null auto_increment primary key,name varchar(100),salary double,start_date datetime);

SELECT * FROM Employee_Payroll.employee_payroll;
insert into employee_payroll values(1,"Neeraj",1234567,sysdate());

insert into employee_payroll(name, salary, start_date) values('Naman',500000,sysdate());

select * from employee_payroll;

select salary from employee_payroll where name = 'Naman' ;
select * from employee_payroll where start_date between '2021-03,08' and curdate();

insert into employee_payroll(name, salary, start_date) values('Naman',500000,'2021-03-01);

ALTER TABLE employee_payroll 
ADD Gender varchar(6) not null 
After name;

