show databases;
-- UC1
create database Payroll_Service;
show databases;
use Payroll_Service;

-- UC2
create table employee_payroll(id integer not null auto_increment primary key, name varchar(50), salary double, start_date datetime);
select *from Payroll_Service.employee_payroll;
-- UC3

insert into employee_payroll(name, salary, start_date) values("Neeraj",800000,curdate());
insert into employee_payroll(name, salary, start_date) values("Neeraj Malhotra",1000000,curdate());
insert into employee_payroll(name, salary, start_date) values("Rajeev",500000,curdate());

-- UC4
select *from Payroll_Service.employee_payroll;

-- UC5
select salary from employee_payroll where name = 'Neeraj';
select * from employee_payroll where start_date between '2020-01-01' and curdate();

-- UC6
Alter table employee_payroll add gender varchar(6) not null after name;
update employee_payroll set gender = "Male";
insert into employee_payroll(name,gender, salary, start_date) values("Vanshika Malhotra",'Female',1200000,curdate());
insert into employee_payroll(name,gender, salary, start_date) values("Raj",'Female',700000,curdate());
select *from Payroll_Service.employee_payroll;

-- UC7
select min(salary) from employee_payroll;
select max(salary) from employee_payroll;
select count(name) from employee_payroll;

select sum(salary) from employee_payroll where gender = "female";
select sum(salary) from employee_payroll where gender = "male";

-- UC8
desc employee_payroll;
Alter table employee_payroll add phone_number varchar(12), add address varchar(50), add department varchar(50);

-- UC9
Alter table employee_payroll add basic_pay varchar(20), 
							add deductions varchar(20), 
                            add taxable_pay varchar(20), 
                            add income_tax varchar(20), 
                            add net_pay varchar(20);
desc employee_payroll;

-- UC10
select * from employee_payroll;
insert into employee_payroll(name,gender,salary,start_date,phone_number,address,department,basic_pay,deductions,taxable_pay,income_tax,net_pay) 
values('Terissa','female','800000',curdate(),'800000','Banglore','Sales,','500000','150000','300000','30000','620000');

insert into employee_payroll(name,gender,salary,start_date,phone_number,address,department,basic_pay,deductions,taxable_pay,income_tax,net_pay) 
values('Terissa','female','800000',curdate(),'1000000','Banglore','Marketing,','700000','200000','500000','50000','850000');

select * from employee_payroll where name = 'Terissa';

-- UC10
-- Created ER Diagram.

