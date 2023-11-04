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