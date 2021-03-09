-- UC1
show databases;
create database Address_Book;
use Address_Book;

-- UC2
CREATE TABLE address_book (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    zip VARCHAR(50),
    phone_number VARCHAR(10)
);
Alter table address_book add email varchar(50) not null after phone_number;
select * from Address_Book.address_book;

-- UC3
insert into address_book(first_name, last_name,city,state,zip,phone_number,email) values ('Neeraj','Malhotra','Gurgaon','Haryana','122001','8588801333','neeraj@gmail.com');
insert into address_book(first_name, last_name,city,state,zip,phone_number,email) values ('Raj','Malhotra','Gurgaon','Haryana','122001','8588801333','neeraj@gmail.com');
select * from Address_Book.address_book;

-- UC4
update address_book set first_name = 'Naman' where first_name = 'Raj';
select * from Address_Book.address_book;

-- UC5
delete from address_book where first_name = 'Naman';
select * from Address_Book.address_book;

-- UC6
select first_name from address_book where city = 'Gurgaon';

-- UC7
select count(city) from address_book;
select count(state) from address_book;

-- UC8
insert into address_book(first_name, last_name,city,state,zip,phone_number,email) values ('Raj','Malhotra','Gurgaon','Haryana','122001','8588801333','neeraj@gmail.com');
insert into address_book(first_name, last_name,city,state,zip,phone_number,email) values ('Nitin','Kumar','Delhi','Haryana','122001','1234567890','xyz@gmail.com');
select * from Address_Book.address_book;
select * from address_book where city = 'Gurgaon' order by first_name ;

-- UC9
desc address_book;
Alter table address_book add type varchar(50) after first_name;
select * from address_book;

-- UC10
insert into address_book(first_name, type, last_name,city,state,zip,phone_number,email) 
				values ('Veena','family','Malhotra','Gurgaon','Haryana','122001','1234567','veena@gmail.com');
insert into address_book(first_name, type, last_name,city,state,zip,phone_number,email) 
				values ('Radhey','friend','Yadav','Gurgaon','Haryana','122001','234567654','radhey@gmail.com');
select * from address_book;
select count(type) from address_book;

-- UC11
insert into address_book(first_name, type, last_name,city,state,zip,phone_number,email) 
				values ('Praveen','friend','Yadav','Gurgaon','Haryana','122001','234567654','radhey@gmail.com');
insert into address_book(first_name, type, last_name,city,state,zip,phone_number,email) 
				values ('Praveen','family','Yadav','Gurgaon','Haryana','122001','234567654','radhey@gmail.com');
select * from address_book;
