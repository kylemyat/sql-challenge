--Create Departments Table
drop table departments;
create table departments(
	dept_no varchar,
	dept_mane varchar
);

copy departments from 'C:\Users\kylem\Desktop\Bootcamp_Assignments\Challenges\Challenge_9\sql-challenge\Starter_Code\data\departments.csv'
delimiter ',' csv header;

select * from departments;

--Create Department Employees Table
drop table dept_emp;
create table dept_emp(
	emp_no int,
	dept_no varchar
);

copy dept_emp from 'C:\Users\kylem\Desktop\Bootcamp_Assignments\Challenges\Challenge_9\sql-challenge\Starter_Code\data\dept_emp.csv'
delimiter ',' csv header;

select * from dept_emp;

--Create Table Department Manager
drop table dept_manager;
create table dept_manager(
	dept_no varchar,
	emp_no int
);

copy dept_manager from 'C:\Users\kylem\Desktop\Bootcamp_Assignments\Challenges\Challenge_9\sql-challenge\Starter_Code\data\dept_manager.csv'
delimiter ',' csv header;

select * from dept_manager;

--Create Table Employees
drop table employees;
create table employees(
	emp_no int,
	emp_title varchar,
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date varchar
);

copy employees from 'C:\Users\kylem\Desktop\Bootcamp_Assignments\Challenges\Challenge_9\sql-challenge\Starter_Code\data\employees.csv'
delimiter ',' csv header;

select * from employees;

--Create Table Salaries
drop table salaries;
create table salaries(
	emp_no int,
	salary int
);

copy salaries from 'C:\Users\kylem\Desktop\Bootcamp_Assignments\Challenges\Challenge_9\sql-challenge\Starter_Code\data\salaries.csv'
delimiter ',' csv header;

select * from salaries

--Create Table Titles
drop table titles;
create table titles(
	title_id varchar,
	title varchar
);

copy titles from 'C:\Users\kylem\Desktop\Bootcamp_Assignments\Challenges\Challenge_9\sql-challenge\Starter_Code\data\titles.csv'
delimiter ',' csv header;

select * from titles;


