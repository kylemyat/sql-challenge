--Create Departments Table
drop table departments;
create table departments(
	dept_no varchar primary key,
	dept_name varchar
);

copy departments from 'C:\Users\kylem\Desktop\Bootcamp_Assignments\Challenges\Challenge_9\sql-challenge\Starter_Code\data\departments.csv'
delimiter ',' csv header;

select * from departments;


--Create Table Titles
drop table titles;
create table titles(
	title_id varchar primary key,
	title varchar
);

copy titles from 'C:\Users\kylem\Desktop\Bootcamp_Assignments\Challenges\Challenge_9\sql-challenge\Starter_Code\data\titles.csv'
delimiter ',' csv header;

select * from titles;


--Create Table Employees
drop table employees;
create table employees(
	emp_no int primary key,
	emp_title varchar,
	foreign key (emp_title) references titles(title_id),
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date
);

copy employees from 'C:\Users\kylem\Desktop\Bootcamp_Assignments\Challenges\Challenge_9\sql-challenge\Starter_Code\data\employees.csv'
delimiter ',' csv header;

select * from employees;


--Create Department Employees Table
drop table dept_emp;
create table dept_emp(
	emp_no int not null,
	foreign key (emp_no) references employees(emp_no),
	dept_no varchar,
	foreign key (dept_no) references departments(dept_no)
);

copy dept_emp from 'C:\Users\kylem\Desktop\Bootcamp_Assignments\Challenges\Challenge_9\sql-challenge\Starter_Code\data\dept_emp.csv'
delimiter ',' csv header;

select * from dept_emp;

--Create Table Department Manager
drop table dept_manager;
create table dept_manager(
	dept_no varchar not null,
	foreign key (dept_no) references departments(dept_no),
	emp_no int not null,
	foreign key (emp_no) references employees(emp_no)
);

copy dept_manager from 'C:\Users\kylem\Desktop\Bootcamp_Assignments\Challenges\Challenge_9\sql-challenge\Starter_Code\data\dept_manager.csv'
delimiter ',' csv header;

select * from dept_manager;


--Create Table Salaries
drop table salaries;
create table salaries(
	emp_no int not null,
	foreign key (emp_no) references employees(emp_no),
	salary int not null
);

copy salaries from 'C:\Users\kylem\Desktop\Bootcamp_Assignments\Challenges\Challenge_9\sql-challenge\Starter_Code\data\salaries.csv'
delimiter ',' csv header;

select * from salaries;
