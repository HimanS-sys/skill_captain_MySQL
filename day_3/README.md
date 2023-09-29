# Assignment 

## Task:
* > Create a MySQL database with a table Employees consisting of the following columns -
	- `ID` (Integer data type)
	- `Name` (Character data type
	- `Email` Address (Character data type)
	- `Department` (Character data type)
	- `Date of Birth` (Date data type)
	- `Salary` (Decimal data type)
	- `Is Active` (Boolean data type)
* > Insert 2 rows of data into the table.

## Solution:
```sql
CREATE DATABASE EmployeesDB; 

CREATE TABLE EmployeesDB.Employees (
	id INT,
	employee_name VARCHAR(50),
	email_address VARCHAR(30),
    department VARCHAR(30),
    birth_date date,
    annual_salary DECIMAL,
    is_active BOOLEAN
);

INSERT INTO EmployeesDB.Employees (id, employee_name, email_address, department, birth_date, annual_salary, is_active)
VALUES
(1, "Himanshu Kandpal", "himanshuk33@gmail.com", "IT", '1999-07-15', 500000.00, TRUE),
(2, "Arun Jain", "arunkjain@gmail.com", "finance", '1966-03-08', 6000000, FALSE);

SELECT * FROM EmployeesDB.Employees;
```
## Result:
![Screenshot 2023-09-29 144410](https://github.com/HimanS-sys/skill_captain_MySQL/assets/68765011/fa20f77b-34e7-4cf0-a9c9-df4deb852512)

