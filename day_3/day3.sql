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
