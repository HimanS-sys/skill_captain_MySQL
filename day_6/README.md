# Assignment

## Task
* > Write a SQL query to drop a table named employees.
* > Write a SQL query to truncate a table named employees.

## Solution:

```sql
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
```

## Result:
* > Before TRUNCATE

![Screenshot 2023-09-29 165853](https://github.com/HimanS-sys/skill_captain_MySQL/assets/68765011/b3cc272d-484a-4817-8f41-9d169e76f8ac)

* > After TRUNCATE

![Screenshot 2023-09-29 165908](https://github.com/HimanS-sys/skill_captain_MySQL/assets/68765011/a5fe3001-5324-4925-a004-668a8a0bc0cb)

* > Tables in database before DROP

![Screenshot 2023-09-29 165920](https://github.com/HimanS-sys/skill_captain_MySQL/assets/68765011/60b02f73-cf0f-40ae-b0a3-21adf3df7656)

* > Tables in database after DROP

![Screenshot 2023-09-29 165937](https://github.com/HimanS-sys/skill_captain_MySQL/assets/68765011/dc16b814-4938-449c-8f79-5e535fb93824)

