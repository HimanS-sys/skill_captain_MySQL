-- insert more values to populate the table
INSERT INTO EmployeesDB.Employees (id, employee_name, email_address, department, birth_date, annual_salary, is_active)
VALUES
(3, "Prasad Bhosale", "pbjkjk@gmail.com", "operations management", '1999-02-25', 2500000.00, TRUE),
(4, "Siddhi Rane", "impostercd@gmail.com", "marketing", '1999-11-29', 2600000.00, TRUE),
(5, "Rishabh Kevancia", "techmankev@gmail.com", "management", "1999-12-18", 700000.00, TRUE);

-- show all the columns in the table 
SELECT * FROM EmployeesDB.Employees; 

-- show all the columns where annual salary > 1000000.00
SELECT * FROM EmployeesDB.Employees WHERE annual_salary > 1000000.00; 