# Assignment

## Task:

* > 1 Consider the table structure given:

```sql
CREATE TABLE Employees (
  ID INT,
  Name VARCHAR(255),
  Department VARCHAR(255)
);
```

* > Write a SQL query to display the total number of employees in each department, sorted by the department with the highest number of employees first, and only show departments with more than 2 employees.

## Solution:

```sql
CREATE TABLE EmployeesDB.Employees2 (
  ID INT,
  Name VARCHAR(255),
  Department VARCHAR(255)
);

-- populate the table
INSERT INTO EmployeesDB.Employees2 (ID, Name, Department)
VALUES
(1, "Himanshu Kandpal", "IT"),
(2, "Arun Jain", "management"),
(3, "Prasad Bhosale", "management"),
(4, "Akshay Kumar", "IT"),
(5, "Siddhi Rane", "marketing"),
(6, "Rishabh Kevancia", "management"),
(7, "Rohit Sharma", "IT");

-- display departments having atleast 2 employees sorted by 
-- department with highest number of employees
SELECT Department, COUNT(*) AS Total_Employees
FROM EmployeesDB.Employees2 
GROUP BY Department
HAVING Total_Employees > 2; 
```

## Result:

![Screenshot 2023-09-29 174105](https://github.com/HimanS-sys/skill_captain_MySQL/assets/68765011/35ee8584-d456-48c0-a037-62c2bcbefbb8)

