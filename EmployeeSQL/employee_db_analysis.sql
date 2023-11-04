-- Note: I am using aliases for my query to get used to SQL query best practices

-- List the employee number, last name, first name, sex, and salary of each employee.
-- Result: There are 300024 records from this query
SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    e.sex,
    s.salary
FROM
    employee e
JOIN
    salaries s ON e.emp_no = s.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
-- Result: There are 36150 records from this query
SELECT
    first_name,
    last_name,
    hire_date
FROM
    employee
WHERE
    EXTRACT(YEAR FROM hire_date) = 1986;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name
-- For this query, I must join the following tables:
-- department_manager table WITH employee table on emp_no
-- department_manager table WITH departments table on dept_no
-- Result: 24 records
SELECT
    dm.dept_no,
    d.dept_name,
    dm.emp_no,
    e.last_name,
    e.first_name
FROM
    department_manager dm
JOIN
    employee e ON dm.emp_no = e.emp_no
JOIN
    department d ON dm.dept_no = d.dept_no;
	

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
-- for this query, I must join the following table:
-- dept_emp WITH employee ON emp_no
-- dept_emp WITH department ON dept_no
-- Result: There are 331603 records from this query
SELECT
    de.emp_no AS employee_number,
    e.last_name,
    e.first_name,
    d.dept_name AS department_name
FROM
    dept_emp de
JOIN
    employee e ON de.emp_no = e.emp_no
JOIN
    department d ON de.dept_no = d.dept_no;


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
-- Result: There are 20 employee records with the first name, "Hercules" and last name starting with "B"
SELECT
    first_name,
    last_name,
    sex
FROM
    employee
WHERE
    first_name = 'Hercules' AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.
-- Result: There are 52245 records from this query
SELECT
    e.emp_no AS sales_employee_number,
    e.last_name,
    e.first_name
FROM
    employee e
JOIN
    dept_emp de ON e.emp_no = de.emp_no
JOIN
    department d ON de.dept_no = d.dept_no
WHERE
    d.dept_name = 'Sales'
ORDER BY
	e.last_name;

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- Result: There are 137952 records from this query
SELECT
    e.emp_no AS employee_number,
    e.last_name,
    e.first_name,
    d.dept_name AS department_name
FROM
    employee e
JOIN
    dept_emp de ON e.emp_no = de.emp_no
JOIN
    department d ON de.dept_no = d.dept_no
WHERE
    d.dept_name IN ('Sales', 'Development')
ORDER BY
	d.dept_name ASC;


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
-- Resuls: There are 1638 last names shared by multiple employees. Sounds like nepotism. :-)
SELECT
    last_name,
    COUNT(*) AS frequency
FROM
    employee
GROUP BY
    last_name
ORDER BY
    frequency DESC, last_name;
