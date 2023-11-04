# sql-challenge
UC Berkeley Extension Data Bootcamp SQL Challenge

## Background ##
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

## Data Sources and Other Resources ##

** Data Source: **

[Six csv files](https://github.com/rabellan/sql-challenge/tree/main/data)

** Software: **

PostreSQL

pgAdmin 4

[Quick DBD](https://www.quickdatabasediagrams.com/)

## Data Modeling ##
![Data modeling information here.](https://github.com/rabellan/sql-challenge/blob/main/images/QuickDBD-employee_db.png)

## Data Engineering ##
![The schema of employee_db can be found here](https://github.com/rabellan/sql-challenge/blob/main/EmployeeSQL/schema.sql)

## Data Analysis ##

1. List the employee number, last name, first name, sex, and salary of each employee.
    Result: There are 300024 records from this query
    ![List of employee number, last name, first name, sex, and salary of each employee](https://github.com/rabellan/sql-challenge/blob/main/images/Question1.png)

2. List the first name, last name, and hire date for the employees who were hired in 1986.
    ![List the first name, last name, and hire date for the employees who were hired in 1986](https://github.com/rabellan/sql-challenge/blob/main/images/Question2.png)

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
    ![List the manager of each department along with their department number, department name, employee number, last name, and first name.](https://github.com/rabellan/sql-challenge/blob/main/images/Question3.png)

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
    ![List the department number for each employee along with that employee’s employee number, last name, first name, and department name](https://github.com/rabellan/sql-challenge/blob/main/images/Question4.png)

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
    ![List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B](https://github.com/rabellan/sql-challenge/blob/main/images/Question5.png)

6. List each employee in the Sales department, including their employee number, last name, and first name.
    ![List each employee in the Sales department, including their employee number, last name, and first name](https://github.com/rabellan/sql-challenge/blob/main/images/Question6.png)

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
    ![List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.](https://github.com/rabellan/sql-challenge/blob/main/images/Question7.png)

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
    ![List the frequency counts, in descending order, of all the employee last names](https://github.com/rabellan/sql-challenge/blob/main/images/Question8.png)