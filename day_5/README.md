# Assignment:

## Task:
- > Insert 2 new rows of data (employee details) into the employees table.
- > Update the salary of the employee with ID 2 to 750000.
- > Delete the employee with ID 1 from the employees table.

## Solution:
```sql
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
```

## Result:
> Before query execution

![Screenshot 2023-09-29 160510](https://github.com/HimanS-sys/skill_captain_MySQL/assets/68765011/7ddb69aa-b6bc-412a-93b6-54e5b07dda96)

> After execution

![Screenshot 2023-09-29 160552](https://github.com/HimanS-sys/skill_captain_MySQL/assets/68765011/859e9378-7e1c-4e52-915b-d40f97d7734b)



