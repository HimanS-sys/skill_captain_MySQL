# Assignment

## Task:
* > Retrieve all columns from the employees table created in the day 3.
* > Retrieve only the ID and Name columns from the employees table, where Salary is greater than 1000000.

## SOlution:
```sql
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
```
## Result:
![Screenshot 2023-09-29 152347](https://github.com/HimanS-sys/skill_captain_MySQL/assets/68765011/6c7cf6a4-ba5b-437b-83ef-a8a4ae9b8138)

![Screenshot 2023-09-29 152403](https://github.com/HimanS-sys/skill_captain_MySQL/assets/68765011/957f46bd-a755-4425-b53c-2a6a196fa241)

