-- CREATE TABLES

CREATE TABLE employees (
	emp_no integer PRIMARY KEY,
	birth_date date NOT null,
	first_name varchar NOT null,
	last_name varchar NOT null,
	gender varchar NOT null,
	hire_date date NOT null
);

CREATE TABLE titles (
	emp_no integer NOT null, FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	title varchar NOT null,
	from_date date NOT null,
	to_date date NOT null
);

CREATE TABLE salaries (
	emp_no integer NOT null, FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	salary varchar NOT null,
	from_date date NOT null,
	to_date date NOT null
);

CREATE TABLE departments (
	dept_no varchar PRIMARY KEY,
	dept_name varchar NOT null
);
					   
CREATE TABLE dept_manager (
	dept_no varchar NOT null, FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	emp_no integer NOT null, FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	from_date date NOT null,
	to_date date NOT null
);
						   
CREATE TABLE dept_emp (
	emp_no integer NOT null, FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	dept_no varchar NOT null, FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	from_date date NOT null,
	to_date date NOT null
);