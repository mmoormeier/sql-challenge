
-- Question 1.
-- Add FK to salaries
ALTER TABLE salaries add constraint emp_no FOREIGN KEY(emp_no) REFERENCES employees(emp_no);

-- Join employees and salaries tables
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, salary.salary
FROM employees AS emp
JOIN salaries AS salary
	ON emp.emp_no = salary.emp_no;

-- Question 2.
SELECT emp.first_name, emp.last_name, emp.hire_date
FROM employees AS emp
WHERE 
	hire_date between '1986-01-01' and '1986-12-31'

-- Question 3.
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
LEFT JOIN departments ON
departments.dept_no=dept_manager.dept_no
JOIN employees ON
employees.emp_no=dept_manager.emp_no

-- Question 4.
SELECT dept.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp AS dept
JOIN departments ON
departments.dept_no=dept.dept_no
Join employees ON
employees.emp_no=dept.emp_no

--Question 5.
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE
	first_name = 'Hercules'
	AND last_name LIKE 'B%';

-- Question 6.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
LEFT JOIN departments ON
departments.dept_no=dept_emp.dept_no
JOIN employees ON
employees.emp_no=dept_emp.emp_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

-- Question 7.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
LEFT JOIN departments ON
departments.dept_no=dept_emp.dept_no
JOIN employees ON
employees.emp_no=dept_emp.emp_no
WHERE dept_name = 'Sales';


-- Question 8.
SELECT employees.last_name, COUNT(last_name) AS "Last_Name_Count"
FROM employees
GROUP BY last_name
ORDER BY "Last_Name_Count" DESC;

