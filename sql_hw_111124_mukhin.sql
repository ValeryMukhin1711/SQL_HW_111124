create database homeworks;
use homeworks;

create table employees (
	id int primary key auto_increment,
    firstname varchar(128) not null,
    lastname varchar(128) not null,
    job varchar(64),
    age int check (age between 20 and 100),
    hascar char(1) check(hascar in ('Y', 'N')),
    username varchar(128) unique not null
);


insert into employees (firstname, lastname, job, age, hascar, username)
values ('John', 'Smith', 'engineer', 45, 'Y', 'johnsmith111'),
('Nick', 'Andrews', 'engineer', 36, 'N', 'nick777'),
('Leonardo', 'DiCaprio', 'actor', 45, 'Y', 'leohasoscarnow'),
('Olga', 'Kuznetsova', 'sales manager', '22', 'Y', 'olga555'),
('Elon', 'Musk', 'senior engineer', 45, 'Y', 'spacex777')
;

drop table employees;

drop database homeworks;


-- tasks

create database tasks;
use tasks;

create table staff(
	id int primary key auto_increment,
    firstname varchar(60) not null,
    lastname varchar(100) not null,
    position varchar(100),
    age int check(age between 0 and 110),
    has_child char(1) check(has_child in ('Y', 'N')),
    username varchar(100) unique
);

insert into staff (firstname, lastname, position, age, has_child, username)
values ('Ally' , 'Austin' , 'Junior UI Designer' , 28 , 'N' , 'ally1' ),
('Daniel', 'Faviet', 'Senior UX Designer', 43, 'Y', 'favietD'),
('Lily', 'Chen', 'Senior Teacher', 25, 'Y', 'lilychen'),
('Alexey', 'Petrov', 'Engineer', 48, 'Y', 'petrov777'),
('Elena', 'Andrienko', 'Sales manager', 18, 'N', 'elena444'),
('Larisa', 'Osipova', 'Senior HR', 45, 'N', 'hrhr333'),
('Alexandr', 'Ivanov', 'Driver', 37, 'N', 'aliv444'),
('Andrew', 'Davids', 'Courier', 32, 'N', 'user44');




select *
from staff
where (age between 20 and 40);

select *
from staff
where ((username like 'a%') and (age > 20));

select firstname, lastname, age
from staff 
where (id in (3, 7, 10));

select *
from staff
where ((firstname like 'a%') and (lastname like '%s'));
