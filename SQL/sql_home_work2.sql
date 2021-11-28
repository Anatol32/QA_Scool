create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);


insert into employees(employee_name)
values ('Uriyah'),
		   ('Clayton'),
		   ('Gilbert'),
		   ('Samir'),
		   ('Zaki'),
		   ('Ben'),
		   ('Harvey'),
		   ('Kaiden'),
		   ('Jeremiah'),
		   ('Ryker'),
		   ('Sutton'),
		   ('King'),
		   ('Briggs'),
		   ('Octavio'),
		   ('Connor'),
		   ('Dalton'),
		   ('Hassan'),
		   ('Felipe'),
		   ('Kingsley'),
		   ('Quirino'),
		   ('Wesley'),
		   ('Yusuf'),
		   ('Quint'),
		   ('Vann'),
		   ('Grint'),
		   ('Marco'),
		   ('Vincent'),
		   ('Nathaniel'),
		   ('Wells'),
		   ('Conner'),
		   ('Isiah'),
		   ('Trenton'),
		   ('Manuel'),
		   ('Samuel'),
		   ('Ilan'),
		   ('Cate'),
		   ('Royal'),
		   ('Derek'),
		   ('Gibson'),
		   ('Ximenes'),
		   ('Nicolas'),
		   ('Matthew'),
		   ('Yonatan'),
		   ('Nasir'),
		   ('Raiden'),
		   ('Holland'),
		   ('Cyrus'),
		   ('Amir'),
		   ('Orin'),
		   ('Talon'),
		   ('Ezequiel'),
		   ('Quintrell'),
		   ('Gage'),
		   ('Neal'),
		   ('Silas'),
		   ('Solomon'),
		   ('Armani'),
		   ('Thomas'),
		   ('Nathaniel'),
		   ('Izaiah'),
		   ('Juan'),
		   ('Dawson'),
		   ('Philip'),
		   ('Izaiah'),
		   ('Amir'),
		   ('Everett'),
		   ('Leighton'),
		   ('Easton'),
		   ('Virgil'),
		   ('Tom');
		   
select * from employees
		  
create table salary (
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary)
	values (1000),
		   (1100),
		   (1200),
		   (1300),
		   (1400),
		   (1500),
		   (1600),
		   (1700),
		   (1800),
		   (1900),
		   (2000),
		   (2100),
		   (2200),
		   (2300),
		   (2400),
		   (2500);

select * from salary		  
		  
create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

insert into employee_salary(employee_id,salary_id)
	values (13, 10), 
		   (17, 29),
		   (19, 13),
		   (4, 16),
		   (29, 39),
		   (18, 38),
		   (39, 36),
		   (31, 25),
		   (21, 6),
		   (12, 33),
		   (37, 31),
		   (10, 7),
		   (15, 1),
		   (20, 9),
		   (14, 24),
		   (32, 26),
		   (23, 27),
		   (5, 17),
		   (34, 14),
		   (7, 23),
		   (24, 15),
		   (38, 8),
		   (33, 11),
		   (3, 37),
		   (25, 34),
		   (2, 19),
		   (16, 20),
		   (30, 35),
		   (35, 18),
		   (6, 21),
		   (76, 5),
		   (77, 4),
		   (71, 30),
		   (73, 12),
		   (72, 2),
		   (78, 32),
		   (79, 22),
		   (75, 40),
		   (74, 3),
		   (80, 28);
		  
select * from employee_salary
		  
create table roles(
	id serial primary key,
	role_name int unique not null
);


alter table roles alter column role_name type varchar(30);

insert into roles (role_name)
	values ('Junior Python developer'),
		   ('Middle Python developer'),
		   ('Senior Python developer'),
		   ('Junior Java developer'),
		   ('Middle Java developer'),
		   ('Senior Java developer'),
		   ('Junior JavaScript developer'),
		   ('Middle JavaScript developer'),
		   ('Senior JavaScript developer'),
		   ('Junior Manual QA engineer'),
		   ('Middle Manual QA engineer'),
		   ('Senior Manual QA engineer'),
		   ('Project Manager'),
		   ('Designer'),
		   ('HR'),
		   ('CEO'),
		   ('Sales manager'),
		   ('Junior Automation QA engineer'),
		   ('Middle Automation QA engineer'),
		   ('Senior Automation QA engineer');

select * from roles
		  
create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)
);

insert into roles_employee (employee_id, role_id)
	values (13, 5),
		   (27, 10),
		   (5, 20),
		   (17, 7),
		   (26, 18),
		   (38, 19),
		   (8, 9),
		   (18, 15),
		   (37, 16),
		   (39, 8),
		   (14, 12),
		   (36, 14),
		   (19, 11),
		   (21,1),
		   (24,13),
		   (10, 4),
		   (4, 3),
		   (16, 6),
		   (20, 17),
		   (22, 2),
		   (15, 1),
		   (32, 2),
		   (9, 6),
		   (30, 10),
		   (6, 18),
		   (33, 15),
		   (40, 3),
		   (31, 11),
		   (2, 4),
		   (35, 13),
		   (11, 14),
		   (34, 7),
		   (28, 16),
		   (7, 19),
		   (23, 20),
		   (29, 17),
		   (1, 8),
		   (25, 9),
		   (3, 5),
		   (12, 12);
		   



select *from roles_employee

