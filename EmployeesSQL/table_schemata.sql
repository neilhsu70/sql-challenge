-- CREATE TABLES & Import .csv in same order tables were created

CREATE TABLE employees (emp_no integer PRIMARY KEY, birth_date date,
						first_name varchar, last_name varchar,
						gender varchar, hire_date date);

CREATE TABLE titles (emp_no integer, FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
					 title varchar, from_date date, to_date date);

CREATE TABLE salaries (emp_no integer, FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
					   salary varchar, from_date date, to_date date);

CREATE TABLE departments (dept_no varchar PRIMARY KEY, dept_name varchar);
					   
CREATE TABLE dept_manager (dept_no varchar, FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
						   emp_no integer, FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
						   from_date date, to_date date not null);
						   
CREATE TABLE dept_emp (emp_no integer, FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
					   dept_no varchar, FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
					   from_date date, to_date date);