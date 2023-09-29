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