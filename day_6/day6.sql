-- table before queries
SELECT * FROM EmployeesDB.Employees;

-- truncate Employees table
TRUNCATE TABLE EmployeesDB.Employees;

-- table after truncate
SELECT * FROM employeesDB.Employees;

-- All the tables before the DROP query
SHOW TABLES IN EmployeesDB;

-- removes the table from the data base
DROP TABLE EmployeesDB.Employees;

-- All the tables after the DROP query
SHOW TABLES IN EmployeesDB;