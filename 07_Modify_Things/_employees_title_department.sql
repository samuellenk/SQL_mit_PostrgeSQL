/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: create employee and title_department table
 */

-- create employee table
create table employee (
	id int not null generated by default as identity,
	first_name varchar not null,
	last_name varchar not null,
	email varchar not null,
	phone_number varchar,
	birth_date date not null,
	hire_date timestamp with time zone not null,
	job_title varchar not null,
	salary numeric(8, 2) not null,
	manager_id int,
	active boolean default true,
	picture bytea,
	constraint employee_pk primary key (id),
	constraint employee_manager_id_fk foreign key (manager_id) references employee(id) on delete cascade on update cascade
);

-- insert employee data
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (1,'Omphile','Qi','omphile-qi@company.org','+11 25 17628','1996-02-01','2022-04-29','General Manager',11551.00,null,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (13,'Fozia','Sinha','fozia-sinha@company.org','+74 157 44204','1972-12-06','2018-12-09','Human Resources Representative',10443.00,1,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (21,'Ramón','Dominguez','ramon-dominguez@company.org','+75 496 73302','1963-08-24','2018-11-22','Customer Manager',3399.00,1,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (22,'Antônio','Zhu','antonio-zhu@company.org','+95 676 34606','2003-06-29','2019-10-25','Administration Assistant',10118.00,1,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (3,'Gayane','Habib','gayane-habib@company.org','+38 255 48145','1996-05-30','2018-01-13','Accounting Manager',3253.00,1,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (5,'Nika','Bauri','nika-bauri@company.org','+19 232 59747','1960-07-08','2017-06-14','Purchasing Manager',10054.00,1,false,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (8,'Malthe','Otieno','malthe-otieno@company.org','+49 728 51057','1980-02-19','2017-12-02','Finance Manager',6377.00,1,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (10,'Raquel','Jassim','raquel-jassim@company.org','+10 747 41837','1972-04-14','2019-10-14','Marketing Manager',6510.00,1,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (12,'Mía','Xie','mia-xie@company.org','+67 908 21164','1991-11-17','2021-01-14','Sales Manager',9629.00,1,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active)
values (14,'Ayabonga','Fernandes','ayabonga-fernandes@company.org','+52 948 55472','1990-08-31',now(),'Stock Manager',5742.00,1,false);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (18,'Zeynep','Oumarou','zeynep-oumarou@company.org','+39 458 79428','1967-06-19','2020-11-13','Community Manager',6696.50,1,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (9,'Abdul','Ke','abdul-ke@company.org','+12 243 74293','1964-07-01','2021-02-18','Accountant',10236.00,8,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (4,'Amara','Bello','amara-bello@company.org','+53 597 43175','2001-09-20','2017-10-09','Public Accountant',4049.00,8,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (17,'Susanna','Francisco','susanna-francisco@company.org','+78 897 1501','1974-02-27','2017-12-21','Marketing Representative',3441.00,10,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (7,'Hawa','Paredes','hawa-paredes@company.org','+70 189 39860','1975-03-27','2021-07-27','Public Relations Representative',5761.33,10,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (6,'Abdullah','Mitchell','abdullah-mitchell@company.org','+53 39 48933','1992-07-11','2018-12-19','Sales Representative',7633.00,12,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (19,'Victoria','Reddy','victoria-reddy@company.org','+11 279 16701','1974-07-01','2018-02-02','Shipping Clerk',5941.10,14,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (2,'Murtang','Kanwar','murtang-kanwar@company.org','+98 982 40982','1970-03-19','2019-04-06','Purchasing Clerk',4359.00,14,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (20,'Abril','Rehman','abril-rehman@company.org','+46 86 92422','1993-06-16','2020-10-04','Stock Clerk',5575.00,14,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (23,'Ammar','González','ammar-gonzalez@company.org','+35 574 62265','1972-06-01','2018-10-30','Customer Happiness Agent',4694.00,21,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active,picture)
values (16,'Sobia','Diallo','sobia-diallo@company.org','+74 651 19204','1988-11-15',now(),'Customer Happiness Agent',6476.02,21,true,null);
insert into employee (id,first_name,last_name,email,phone_number,birth_date,hire_date,job_title,salary,manager_id,active)
values (11,'Maryam','Martins','maryam-martins@company.org','+62 68 99082','1965-07-15','2019-07-13','Programmer',2000.00,null,true);

-- create title_department table
create table title_department (
	job_title varchar not null,
	department_name varchar not null,
	department_id int not null
);

-- insert title_department data
insert into title_department (job_title,department_name,department_id) values
	 ('Accountant','Accounting',4),
	 ('Accounting Manager','Accounting',4),
	 ('Administration Assistant','Administration',2),
	 ('Community Manager','Customer Service',3),
	 ('Customer Happiness Agent','Customer Service',3),
	 ('Customer Manager','Customer Service',3),
	 ('Finance Manager','Finance',5),
	 ('General Manager','Executive',1),
	 ('Human Resources Representative','Human Resources',6);
insert into title_department (job_title,department_name,department_id) values
	 ('Marketing Manager','Marketing',8),
	 ('Marketing Representative','Marketing',8),
	 ('Programmer','IT',7),
	 ('Public Accountant','Accounting',4),
	 ('Public Relations Representative','Marketing',8),
	 ('Purchasing Clerk','Purchasing',9),
	 ('Purchasing Manager','Purchasing',9),
	 ('Sales Manager','Sales',10),
	 ('Sales Representative','Sales',10),
	 ('Shipping Clerk','Shipping',11);
insert into title_department (job_title,department_name,department_id) values
	 ('Stock Clerk','Purchasing',9),
	 ('Stock Manager','Purchasing',9);

-- this is the data we are now going to work with
select * from employee; -- we will create a new version of this table
select * from title_department; -- and this table is our reference (mapping titles to departments)

