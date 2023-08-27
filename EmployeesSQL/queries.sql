-- List emplyee number, last name, first name, sex and salary of each employee
select 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.sex, salaries.salary
from employees as e
	join salaries on e.emp_no = salaries.emp_no;


--List the first name, last name, and hire date for the employees who were hired in 1986
select first_name, 
	last_name, 
	hire_date
from employees
where hire_date 
	between '1986-01-01' and '1986-12-31';


--List the manager of each department along with their department number, department name, employee number, last name, and first name
select 
	dm.dept_no, 
	d.dept_name, 
	dm.emp_no, 
	e.last_name, 
	e.first_name
from dept_manager as dm
	join departments as d on dm.dept_no = d.dept_no
		join employees as e on dm.emp_no = e.emp_no;


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
select 
	d.dept_no, 
	e.emp_no, 
	e.last_name,
	e.first_name, 
	d.dept_name
from employees as e
	join dept_emp on dept_emp.emp_no = e.emp_no
		join departments as d on d.dept_no = dept_emp.dept_no;


--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select 
	first_name, 
	last_name, 
	sex
from employees 
where 
lower(first_name) = 'hercules'
and last_name like 'B%';


--List each employee in the Sales department, including their employee number, last name, and first name
select 
	e.emp_no, 
	e.last_name, 
	e.first_name
from employees as e
	join dept_emp on dept_emp.emp_no = e.emp_no
		join departments on departments.dept_no = dept_emp.dept_no
where departments.dept_no ='d007';


--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
select 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	departments.dept_name
from employees as e
	join dept_emp on dept_emp.emp_no = e.emp_no
		join departments on departments.dept_no = dept_emp.dept_no
			where departments.dept_no ='d007'
			or departments.dept_no = 'd005';


--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 
select 
	last_name,
	count(emp_no)
from employees
group by last_name
order by count desc;

