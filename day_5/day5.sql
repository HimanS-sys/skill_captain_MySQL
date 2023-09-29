-- show table before the queries
SELECT * FROM EmployeesDB.Employees;

-- inserting 2 more values into the table
INSERT INTO EmployeesDB.Employees (id, employee_name, email_address, department, birth_date, annual_salary, is_active)
VALUES
(6, "Vivek Kumar", "vivekhacker@gmail.com", "it", '2000-08-12', 800000.00, TRUE),
(7, "Sagar Savale", "gamersavale@gmail.com", "accounting", '1973-06-03', 5000000.00, FALSE);

-- update the salary of the employee with id 2 to 750000
UPDATE EmployeesDB.Employees
SET Employees.annual_salary = 750000.00
WHERE Employees.id=2;

-- delete employee where id = 1
DELETE 
FROM EmployeesDB.Employees
WHERE id = 1;

-- show table after performing the queries
SELECT * FROM EmployeesDB.Employees;