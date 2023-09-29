# Assignment


## Task
* > Suppose you have two tables - one containing employee information and the other containing department information. Schemas are given below:


```sql
CREATE TABLE Employee (
  EmployeeID INT,
  EmployeeName VARCHAR(255),
  DepartmentID INT
);

CREATE TABLE Department (
  DepartmentID INT,
  DepartmentName VARCHAR(255)
);

```

- > Write a SQL query to return a list of all possible combinations of employees and departments.
- > Write a SQL query to return the list of employees who belong to atleast one department.
- > Write a SQL query to return the list of all employees and their department details, including those employees who do not belong to any department or departments which do not have any employees.
- > Write a SQL query to return the list of all employees, along with their department details if they belong to a department.
- > Write a SQL query to return the list of all departments, along with the employee details if they have atleast one employee belonging to the department.

## Solution:

```sql
-- create employees table
CREATE TABLE EmployeesDB.Employee (
  EmployeeID INT,
  EmployeeName VARCHAR(255),
  DepartmentID INT
);

-- create department table
CREATE TABLE EmployeesDB.Department (
  DepartmentID INT,
  DepartmentName VARCHAR(255)
);

-- populate the employees table
INSERT INTO EmployeesDB.Employee (EmployeeID, EmployeeName, DepartmentID)
VALUES 
(1, 'John Doe', 1),
(2, 'Jane Smith', 2),
(3, 'Robert Johnson', 3),
(4, 'Michael Brown', 4),
(5, 'Jennifer Davis', 5),
(6, 'Patricia Miller', 1),
(7, 'James Wilson', 2),
(8, 'Linda Moore', 3),
(9, 'William Taylor', 4),
(10, 'Elizabeth Anderson', 5),
(11, 'David Thomas', 1),
(12, 'Mary Jackson', 2),
(13, 'Christopher White', 3),
(14, 'Daniel Harris', 4),
(15, 'Matthew Martin', 5),
(16, 'Donald Thompson', 1),
(17, 'Richard Garcia', 2),
(18, 'Joseph Martinez', 3),
(19, 'Charles Robinson', 4),
(20, 'Thomas Clark', 5);

-- populate the department table
INSERT INTO EmployeesDB.Department (DepartmentID, DepartmentName)
VALUES 
(1, 'Sales'),
(2, 'Marketing'),
(3, 'HR'),
(4, 'Finance'),
(5, 'IT');

-- display both the tables
SELECT * FROM EmployeesDB.Department;
SELECT * FROM EmployeesDB.Employee;

-- all the possible combinations of employees and department
SELECT * FROM EmployeesDB.Employee
 CROSS JOIN EmployeesDB.Department;

-- list of employees who belong to atleast one department
SELECT * FROM EmployeesDB.Employee
 WHERE DepartmentID IS NOT NULL;

--  list of all employees and their department details,
-- including those employees who do not belong to any department
-- or departments which do not have any employees.
SELECT * FROM EmployeesDB.Employee 
LEFT JOIN EmployeesDB.Department ON Employee.DepartmentID = Department.DepartmentID
UNION
SELECT * FROM EmployeesDB.Employee 
RIGHT JOIN EmployeesDB.Department ON Employee.DepartmentID = Department.DepartmentID;

-- list of all employees, along with their department details
-- if they belong to a department
SELECT * FROM EmployeesDB.Employee 
LEFT JOIN EmployeesDB.Department ON Employee.DepartmentID = Department.DepartmentID;

-- list of all departments, along with the employee details
-- if they have atleast one employee belonging to the department.
SELECT * FROM EmployeesDB.Department LEFT JOIN EmployeesDB.Employee ON Department.DepartmentID = Employee.DepartmentID;
```

## Result:
> Department Table

![Screenshot 2023-09-29 193633](https://github.com/HimanS-sys/skill_captain_MySQL/assets/68765011/0cdad6f5-fb02-4988-a151-67c81402dac6)

> Employee Table
 
![Screenshot 2023-09-29 193646](https://github.com/HimanS-sys/skill_captain_MySQL/assets/68765011/231e0226-4b3d-42e6-a85e-458ad4f88a49)

> all the possible combinations of employees and department

![Screenshot 2023-09-29 193703](https://github.com/HimanS-sys/skill_captain_MySQL/assets/68765011/e4548197-92ec-4be0-bc13-63efe4a70d91)

> list of employees who belong to atleast one department

![Screenshot 2023-09-29 193718](https://github.com/HimanS-sys/skill_captain_MySQL/assets/68765011/dccc5ed9-13f6-4d51-b97e-4e5e9e611974)

> list of all employees and their department details, including those employees who do not belong to any department or departments which do not have any employees.

![Screenshot 2023-09-29 193731](https://github.com/HimanS-sys/skill_captain_MySQL/assets/68765011/68d26b7f-1ea8-4f01-8377-1c11a50b7fdc)

> list of all employees, along with their department details if they belong to a department

![Screenshot 2023-09-29 193744](https://github.com/HimanS-sys/skill_captain_MySQL/assets/68765011/f495535a-7eb0-498b-9b6c-8ad63ed5a5c3)

>  list of all departments, along with the employee details if they have atleast one employee belonging to the department.

![Screenshot 2023-09-29 193756](https://github.com/HimanS-sys/skill_captain_MySQL/assets/68765011/1eecd143-71ab-4e69-8725-5d4affa9fad7)





