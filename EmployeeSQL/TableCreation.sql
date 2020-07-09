-- Create employees table
CREATE TABLE employees (
	emp_no VARCHAR NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL
);

ALTER TABLE employees
ALTER COLUMN hire_date TYPE DATE USING hire_date::date;

-- Create salaries table
CREATE TABLE salaries(
	emp_no VARCHAR(10) NOT NULL PRIMARY KEY,
	salary INT NOT NULL	
);

-- Create titles table
CREATE TABLE titles(
	title_id VARCHAR(10) NOT NULL PRIMARY KEY,
	title VARCHAR(30) NOT NULL
);

-- Create department employees table
CREATE TABLE dept_emp(
	emp_no VARCHAR(10) NOT NULL,
	dept_no VARCHAR(10) NOT Null
);

-- Create department managers table
CREATE TABLE dept_manager(
	dept_no VARCHAR(10) NOT NULL,
	emp_no VARCHAR(10) NOT NULL PRIMARY KEY
);

-- Create departments table
CREATE TABLE departments(
	dept_no VARCHAR(10) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

-- Import data into each table

-- check unique values in tables
-- Select Count(emp_no) FROM salaries
-- Tables employees, salaries, titles and departments are all normalized

--Add PK to dept_emp and dept_manager tables
ALTER TABLE dept_emp
ADD id SERIAL PRIMARY KEY;


